const hre = require("hardhat");
import {run} from "hardhat";

const { ethers, upgrades } = require("hardhat");

// scripts/deploy.js
async function main() {
    const INITIAL_MINT = ethers.BigNumber.from("10000000000000000000000000");
    const MINTER_ROLE = "0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6";

    const [deployer] = await ethers.getSigners();

    const IronFactory = await ethers.getContractFactory("Iron");

    console.log("Deploying Iron with address: " + deployer.address);
    console.log("Balance of address: " + await deployer.getBalance())

    const IronContract = await upgrades.deployProxy(IronFactory, []);
    await IronContract.deployed();
    console.log("Iron deployed at: ", IronContract.address);


    let txGrantRole = await IronContract.grantRole(MINTER_ROLE, deployer.address);
    await txGrantRole.wait(3)
    console.log("Grant ", deployer.address, " as MINTER in hydrogen contract")

    let txMint = await IronContract.mint("0xc27c7570a57418521339243fB804e82A1621E020", INITIAL_MINT);
    await txMint.wait(3)
    console.log("Mint ", INITIAL_MINT.toString(), " to ", deployer.address)

    let txRevokeRole = await IronContract.revokeRole(MINTER_ROLE, deployer.address);
    await txRevokeRole.wait(3);
    console.log("Revoke role minter to  ", deployer.address, " in hydrogen contract")
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
