import {ethers, run, network} from "hardhat";

// scripts/deploy.js
async function main() {
    const token = "0x1e70f310c902edff4f6176142831b02dc68564d5"; // GOLD address mainnet
    const start = 1647864000;
    const duration = 31536000; // 1 year in seconds

    const [deployer] = await ethers.getSigners();

    console.log("Deploying Staking with address: " + deployer.address);
    console.log("Balance of address: " + await deployer.getBalance());

    const factory = await ethers.getContractFactory("Staking");
    const staking = await factory.deploy(token, start, duration);
    await staking.deployed();
    console.log("Staking deployed at:", staking.address, " with token: ", token, "\n start: ", start, "\n duration: ", duration);

    if (network.name !== "hardhat" && network.name !== "localhost") {
        await new Promise((f) => setTimeout(f, 10000));

        await run("verify:verify", {
            address: staking.address,
            constructorArguments: [token, start, duration],
            contract: "contracts/Staking.sol:Staking"
        });
    }
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
