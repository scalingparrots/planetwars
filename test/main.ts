import hardhat, {upgrades} from "hardhat";
import {expect} from 'chai';
import { Contract } from "@ethersproject/contracts";
import {BigNumber} from "ethers";
const { ethers } = hardhat;
let catchRevert = require("./utils/exceptions.ts").catchRevert;
let GoldContract : Contract;

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

  const goldContractFactory = await ethers.getContractFactory("Gold");
  GoldContract = await upgrades.deployProxy(goldContractFactory, []);
  await GoldContract.deployed();

  let roleAdmin = await GoldContract.getRoleAdmin(DEFAULT_ADMIN_ROLE)
  expect(await GoldContract.hasRole(roleAdmin, deployer.address)).to.be.true
});

describe("Testing... ", async () => {

  describe("Testing ERC20 standard", async () => {

    it("should test grant role minter", async () => {
      await GoldContract.grantRole(MINTER_ROLE, deployer.address);
      await catchRevert(GoldContract.connect(account2).grantRole(MINTER_ROLE, account3.address));
      expect(await GoldContract.hasRole(MINTER_ROLE, deployer.address)).to.be.true
    })

    it("should test mint", async () => {
      await GoldContract.mint(deployer.address, initialSupply);
      await catchRevert(GoldContract.connect(account2).mint(deployer.address, initialSupply));
      expect(await GoldContract.totalSupply()).to.be.equal(initialSupply);
      expect(await GoldContract.balanceOf(deployer.address)).to.be.equal(initialSupply);
    })

    it('should test transfer', async () => {
      await GoldContract.transfer(account1.address, tokenAmount1);
      await catchRevert(GoldContract.transfer(account1.address, initialSupply.add(tokenAmount1)));
      expect(await GoldContract.balanceOf(deployer.address)).to.be.equal(initialSupply.sub(tokenAmount1))
      expect(await GoldContract.balanceOf(account1.address)).to.be.equal(tokenAmount1)
    });

    it('should test approve and transfer from', async () => {
      let balanceDeployer = await GoldContract.balanceOf(deployer.address)
      let balanceAccount = await GoldContract.balanceOf(account3.address)

      await GoldContract.approve(account2.address, tokenAmount1);
      expect(await GoldContract.allowance(deployer.address, account2.address)).to.be.equal(tokenAmount1);

      await GoldContract.connect(account2).transferFrom(deployer.address, account3.address, tokenAmount1);
      await catchRevert(GoldContract.connect(account3).transferFrom(deployer.address, account3.address, tokenAmount1));

      expect(await GoldContract.balanceOf(account3.address)).to.be.equal(balanceAccount.add(tokenAmount1));
      expect(await GoldContract.balanceOf(deployer.address)).to.be.equal(balanceDeployer.sub(tokenAmount1));
    });

    it('should test revoke role', async () => {
      await catchRevert(GoldContract.connect(account2).revokeRole(MINTER_ROLE, deployer.address));
      await GoldContract.revokeRole(MINTER_ROLE, deployer.address);
      expect(await GoldContract.hasRole(MINTER_ROLE, deployer.address)).to.be.false
    });

    it("should test grant role burner", async () => {
      await GoldContract.grantRole(BURNER_ROLE, account2.address);
      await catchRevert(GoldContract.connect(account1).grantRole(BURNER_ROLE, account2.address));
      expect(await GoldContract.hasRole(BURNER_ROLE, account2.address)).to.be.true
    })

    it("should test burn", async () => {
      let balanceDeployer = await GoldContract.balanceOf(deployer.address)
      let totalSupply = await GoldContract.totalSupply();
      await GoldContract.connect(account2).burn(deployer.address, tokenAmount1);
      await catchRevert(GoldContract.connect(account3).burn(deployer.address, tokenAmount1));
      expect(await GoldContract.totalSupply()).to.be.equal(totalSupply.sub(tokenAmount1));
      expect(await GoldContract.balanceOf(deployer.address)).to.be.equal(balanceDeployer.sub(tokenAmount1))
    })

    it('should test transfer from with burn', async () => {
      let balanceDeployer = await GoldContract.balanceOf(deployer.address)
      let balanceAccount = await GoldContract.balanceOf(account5.address)
      await GoldContract.approve(account2.address, tokenAmount1);
      await GoldContract.connect(account2).transferFromWithBurn(deployer.address, account5.address, tokenAmount1);
      await catchRevert(GoldContract.connect(account3).transferFromWithBurn(deployer.address, account5.address, tokenAmount1));
      expect(await GoldContract.balanceOf(account5.address)).to.be.equal(balanceAccount.add(tokenAmount1));
      expect(await GoldContract.balanceOf(deployer.address)).to.be.equal(balanceDeployer.sub(tokenAmount1));
    });

    it('should test revoke role admin', async () => {
      let roleAdmin = await GoldContract.getRoleAdmin(DEFAULT_ADMIN_ROLE)

      //await GoldContract.revokeRole(roleAdmin, deployer.address);
      await GoldContract.renounceRole(roleAdmin, deployer.address);
      expect(await GoldContract.hasRole(roleAdmin, deployer.address)).to.be.false
    });
  })

});
