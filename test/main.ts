import hardhat from "hardhat";
import {expect} from 'chai';
import { Contract } from "@ethersproject/contracts";
import {BigNumber} from "ethers";
const { ethers } = hardhat;
let catchRevert = require("./utils/exceptions.ts").catchRevert;
let catchRevertWithoutReason = require("./utils/exceptions.ts").catchRevertWithoutReason;
let GoldContract : Contract;

let DEFAULT_ADMIN_ROLE = ethers.utils.keccak256("0x00");
let MINTER_ROLE = ethers.utils.keccak256(ethers.utils.toUtf8Bytes('MINTER_ROLE'));
let BURN_ROLE = ethers.utils.keccak256(ethers.utils.toUtf8Bytes('BURNER_ROLE'));

let decimalsBigNumber = BigNumber.from(10000000000).mul(100000000)

let initialSupply:BigNumber = BigNumber.from(25000000).mul(decimalsBigNumber);
let token1:BigNumber = BigNumber.from(100).mul(decimalsBigNumber);

let deployer: any
let account1: any
let account2: any
let account3: any
let account4: any
let account5: any

before(async function() {
  [deployer, account1, account2, account3, account4, account5] = await ethers.getSigners()
});

describe("Testing... ", async () => {

  describe("Testing deploy", async () => {

    it("should deploy gold contract", async () => {
      const goldContractFactory = await ethers.getContractFactory("Gold");
      GoldContract = await upgrades.deployProxy(goldContractFactory, []);
      await GoldContract.deployed();

      await GoldContract.grantRole(MINTER_ROLE, deployer.address);
      await GoldContract.mint(deployer.address, initialSupply);
      await GoldContract.revokeRole(MINTER_ROLE, deployer.address);

      let roleAdmin = await GoldContract.getRoleAdmin(DEFAULT_ADMIN_ROLE)
      let isAdmin = await GoldContract.hasRole(roleAdmin, deployer.address)
      expect(isAdmin).to.be.true
    })

    it('should try mint token1 with admin (not minter) to account 2', async () => {
      await catchRevert(GoldContract.mint(account2.address, token1))

      let balanceOfAccount2 = await GoldContract.balanceOf(account2.address);
      expect(balanceOfAccount2).to.be.equal(0);
    });

    it('should add account 1 as minter', async () => {
      await GoldContract.grantRole(MINTER_ROLE, account1.address);

      let isMinter = await GoldContract.hasRole(MINTER_ROLE, account1.address)
      expect(isMinter).to.be.true
    });

    it('should try mint token1 with admin (not minter) to account 2', async () => {
      await catchRevert(GoldContract.mint(account2.address, token1))
      let balanceOfAccount2 = await GoldContract.balanceOf(account2.address);
      expect(balanceOfAccount2).to.be.equal(0);
    });

    it('should mint token1 with account1 (minter) to account 2', async () => {
      await GoldContract.connect(account1).mint(account2.address, token1)
      let balanceOfAccount2 = await GoldContract.balanceOf(account2.address);
      expect(balanceOfAccount2).to.be.equal(token1);
    });

    it('should revoke role to account 1', async () => {
      await GoldContract.revokeRole(MINTER_ROLE, account1.address)

      let isMinter = await GoldContract.hasRole(MINTER_ROLE, account1.address)
      expect(isMinter).to.be.false
    });

    it('should try mint token1 with accout1 (not minter already) to account 2', async () => {
      await catchRevert(GoldContract.connect(account1).mint(account2.address, token1))
      let balanceOfAccount2 = await GoldContract.balanceOf(account2.address);
      expect(balanceOfAccount2).to.be.equal(token1);
    });

    it('should try burn token1 with account 2 (no burner )', async () => {
      await catchRevert(GoldContract.connect(account2).burn(account2.address, token1));

      let totalSupply = await GoldContract.totalSupply();
      expect(totalSupply).to.be.equal(initialSupply.add(token1))
    });

    it('should add account 2 as burner', async () => {
      await GoldContract.grantRole(BURN_ROLE, account2.address);

      let isBurner = await GoldContract.hasRole(BURN_ROLE, account2.address)
      expect(isBurner).to.be.true
    });

    it('should burn token1 with account 2 (burner )', async () => {
      await GoldContract.connect(account2).burn(account2.address, token1);

      let totalSupply = await GoldContract.totalSupply();
      expect(totalSupply).to.be.equal(initialSupply)
    });

    it('should renounce admin role', async () => {
      let roleAdmin = await GoldContract.getRoleAdmin(DEFAULT_ADMIN_ROLE)
      await GoldContract.renounceRole(roleAdmin, deployer.address)

      let isAdmin = await GoldContract.hasRole(DEFAULT_ADMIN_ROLE, deployer.address)
      expect(isAdmin).to.be.false
    });
  })
});