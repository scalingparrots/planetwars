import "@nomiclabs/hardhat-waffle";
import "@nomiclabs/hardhat-etherscan";
import "@nomiclabs/hardhat-ethers";
import "@openzeppelin/hardhat-upgrades";

import * as dotenv from 'dotenv';

dotenv.config();
const { PRIVATE_KEY } = process.env;
const { ETHERSCAN_API_KEY } = process.env;

module.exports = {
  solidity: "0.8.7",
  networks: {
    mainnet: {
      url: "https://bsc-dataseed.binance.org/",
      chainId: 56,
      gasPrice: 20000000000,
      accounts: [PRIVATE_KEY]
    },
    testnet: {
      url: "https://data-seed-prebsc-1-s1.binance.org:8545",
      chainId: 97,
      gasPrice: 20000000000,
      accounts: [PRIVATE_KEY]
    },
    localhost: {
      chainId: 31337,
      url: "http://127.0.0.1:8545",
      accounts: ["ac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"]
    }
  },
  etherscan: {
    apiKey: ETHERSCAN_API_KEY
  },
};
