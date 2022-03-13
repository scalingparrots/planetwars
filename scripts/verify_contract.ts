const hre = require("hardhat");
import {run} from "hardhat";

const { ethers, upgrades } = require("hardhat");

async function main() {
    if (hre.network.name !== "hardhat" && hre.network.name !== "localhost") {
        await run("verify:verify", {
            address: "0x7d2f97f2c4e26ba2535f2465cf8aceeb94a8d9e8",
            constructorArguments: ["0x2712bb8d96549382bb0a8879306a9264b84896d3", "0xa5e5884ce0eb1e52936172ff04dcccf126c261c2"],
        });
    }
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
