const hre = require("hardhat");
import {run} from "hardhat";

const { ethers, upgrades } = require("hardhat");

// scripts/deploy.js
async function main() {
    const INITIAL_MINT = ethers.BigNumber.from("50000000000000000000000000");
    const MINTER_ROLE = "0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6";

    const [deployer] = await ethers.getSigners();

    console.log("Deploying Hydrogen with address: " + deployer.address);
    console.log("Balance of address: " + await deployer.getBalance());

    const HydrogenFactory = await ethers.getContractFactory("Hydrogen");
    const HydrogenContract = await upgrades.deployProxy(HydrogenFactory, []);
    await HydrogenContract.deployed();
    console.log("Hydrogen deployed at: ", HydrogenContract.address);

    let txGrantRole = await HydrogenContract.grantRole(MINTER_ROLE, deployer.address);
    await txGrantRole.wait(3)
    console.log("Grant ", deployer.address, " as MINTER in hydrogen contract")

    let txMint = await HydrogenContract.mint("0xc27c7570a57418521339243fB804e82A1621E020", INITIAL_MINT);
    await txMint.wait(3)
    console.log("Mint ", INITIAL_MINT.toString(), " to ", deployer.address)

    let txRevokeRole = await HydrogenContract.revokeRole(MINTER_ROLE, deployer.address);
    await txRevokeRole.wait(3);
    console.log("Revoke role minter to  ", deployer.address, " in hydrogen contract")
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
