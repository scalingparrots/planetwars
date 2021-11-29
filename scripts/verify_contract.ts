const hre = require("hardhat");
import {run} from "hardhat";

const { ethers, upgrades } = require("hardhat");

async function main() {
    if (hre.network.name !== "hardhat" && hre.network.name !== "localhost") {
        await run("verify:verify", {
            address: "0x4b63d0e9a54bbf6501f2e0ade4b2467ff833a21f",
            constructorArguments: [],
        });
    }
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
