import hardhat, {upgrades} from "hardhat";
import {expect} from 'chai';
import { Contract } from "@ethersproject/contracts";
import {BigNumber} from "ethers";
const { ethers } = hardhat;
let catchRevert = require("./utils/exceptions.ts").catchRevert;
let hydrogenContract : Contract;

let DEFAULT_ADMIN_ROLE = ethers.utils.keccak256("0x00");
let MINTER_ROLE = ethers.utils.keccak256(ethers.utils.toUtf8Bytes('MINTER_ROLE'));
let BURNER_ROLE = ethers.utils.keccak256(ethers.utils.toUtf8Bytes('BURNER_ROLE'));

let decimalsBigNumber = BigNumber.from(10000000000).mul(100000000)

let initialSupply:BigNumber = BigNumber.from(10000000).mul(decimalsBigNumber);
let tokenAmount1:BigNumber = BigNumber.from(100).mul(decimalsBigNumber);

let deployer: any
let account1: any
let account2: any
let account3: any
let account4: any
let account5: any

before(async function() {
  [deployer, account1, account2, account3, account4, account5] = await ethers.getSigners()

  const hydrogenContractFactory = await ethers.getContractFactory("Hydrogen");
  hydrogenContract = await upgrades.deployProxy(hydrogenContractFactory, []);
  await hydrogenContract.deployed();

  let roleAdmin = await hydrogenContract.getRoleAdmin(DEFAULT_ADMIN_ROLE)
  expect(await hydrogenContract.hasRole(roleAdmin, deployer.address)).to.be.true
});

describe("Testing hydrogen... ", async () => {

  describe("Test standard", async () => {

    it("should test grant role minter", async () => {
      await hydrogenContract.grantRole(MINTER_ROLE, deployer.address);
      await catchRevert(hydrogenContract.connect(account2).grantRole(MINTER_ROLE, account3.address));
      expect(await hydrogenContract.hasRole(MINTER_ROLE, deployer.address)).to.be.true
    })

    it("should test mint", async () => {
      await hydrogenContract.mint(deployer.address, initialSupply);
      await catchRevert(hydrogenContract.connect(account2).mint(deployer.address, initialSupply));
      expect(await hydrogenContract.totalSupply()).to.be.equal(initialSupply);
      expect(await hydrogenContract.balanceOf(deployer.address)).to.be.equal(initialSupply);
    })

    it('should test transfer', async () => {
      await hydrogenContract.transfer(account1.address, tokenAmount1);
      await catchRevert(hydrogenContract.transfer(account1.address, initialSupply.add(tokenAmount1)));
      expect(await hydrogenContract.balanceOf(deployer.address)).to.be.equal(initialSupply.sub(tokenAmount1))
      expect(await hydrogenContract.balanceOf(account1.address)).to.be.equal(tokenAmount1)
    });

    it('should test approve and transfer from', async () => {
      let balanceDeployer = await hydrogenContract.balanceOf(deployer.address)
      let balanceAccount = await hydrogenContract.balanceOf(account3.address)

      await hydrogenContract.approve(account2.address, tokenAmount1);
      expect(await hydrogenContract.allowance(deployer.address, account2.address)).to.be.equal(tokenAmount1);

      await hydrogenContract.connect(account2).transferFrom(deployer.address, account3.address, tokenAmount1);
      await catchRevert(hydrogenContract.connect(account3).transferFrom(deployer.address, account3.address, tokenAmount1));

      expect(await hydrogenContract.balanceOf(account3.address)).to.be.equal(balanceAccount.add(tokenAmount1));
      expect(await hydrogenContract.balanceOf(deployer.address)).to.be.equal(balanceDeployer.sub(tokenAmount1));
    });

    it('should test revoke role', async () => {
      await catchRevert(hydrogenContract.connect(account2).revokeRole(MINTER_ROLE, deployer.address));
      await hydrogenContract.revokeRole(MINTER_ROLE, deployer.address);
      expect(await hydrogenContract.hasRole(MINTER_ROLE, deployer.address)).to.be.false
    });

    it("should test grant role burner", async () => {
      await hydrogenContract.grantRole(BURNER_ROLE, account2.address);
      await catchRevert(hydrogenContract.connect(account1).grantRole(BURNER_ROLE, account2.address));
      expect(await hydrogenContract.hasRole(BURNER_ROLE, account2.address)).to.be.true
    })

    it("should test burn", async () => {
      let balanceDeployer = await hydrogenContract.balanceOf(deployer.address)
      let totalSupply = await hydrogenContract.totalSupply();
      await hydrogenContract.connect(account2).burn(deployer.address, tokenAmount1);
      await catchRevert(hydrogenContract.connect(account3).burn(deployer.address, tokenAmount1));
      expect(await hydrogenContract.totalSupply()).to.be.equal(totalSupply.sub(tokenAmount1));
      expect(await hydrogenContract.balanceOf(deployer.address)).to.be.equal(balanceDeployer.sub(tokenAmount1))
    })

    it('should test transfer from with burn', async () => {
      let balanceDeployer = await hydrogenContract.balanceOf(deployer.address)
      let balanceAccount = await hydrogenContract.balanceOf(account5.address)
      await hydrogenContract.approve(account2.address, tokenAmount1);
      await hydrogenContract.connect(account2).transferFromWithBurn(deployer.address, account5.address, tokenAmount1);
      await catchRevert(hydrogenContract.connect(account3).transferFromWithBurn(deployer.address, account5.address, tokenAmount1));
      expect(await hydrogenContract.balanceOf(account5.address)).to.be.equal(balanceAccount.add(tokenAmount1));
      expect(await hydrogenContract.balanceOf(deployer.address)).to.be.equal(balanceDeployer.sub(tokenAmount1));
    });

    it('should test revoke role admin', async () => {
      let roleAdmin = await hydrogenContract.getRoleAdmin(DEFAULT_ADMIN_ROLE)

      //await hydrogenContract.revokeRole(roleAdmin, deployer.address);
      await hydrogenContract.renounceRole(roleAdmin, deployer.address);
      expect(await hydrogenContract.hasRole(roleAdmin, deployer.address)).to.be.false
    });
  })

});
