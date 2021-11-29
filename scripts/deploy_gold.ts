const hre = require("hardhat");
import {run} from "hardhat";

const { ethers, upgrades } = require("hardhat");

// scripts/deploy.js
async function main() {
    const INITIAL_MINT = ethers.BigNumber.from("10000000000000000000000000");
    const MINTER_ROLE = "0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6";

    const [deployer] = await ethers.getSigners();

    const GoldFactory = await ethers.getContractFactory("Gold");

    console.log("Deploying Gold with address: " + deployer.address);
    console.log("Balance of address: " + await deployer.getBalance())
    const GoldContract = await upgrades.deployProxy(GoldFactory, []);
    await GoldContract.deployed();
    console.log("Gold deployed at: ", GoldContract.address);
    await new Promise((f) => setTimeout(f, 10000));
    await GoldContract.grantRole(MINTER_ROLE, deployer.address);
    await new Promise((f) => setTimeout(f, 10000));
    await GoldContract.mint(deployer.address, INITIAL_MINT);
    await new Promise((f) => setTimeout(f, 10000));
    await GoldContract.revokeRole(MINTER_ROLE, deployer.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
