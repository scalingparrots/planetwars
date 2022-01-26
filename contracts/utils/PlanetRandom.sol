// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import 'base64-sol/base64.sol';


library PlanetRandom {

  /**
   * @notice Return random number from blockhash
   * @dev min include, max exclude
   */
  function calcRandom(uint256 min_, uint256 max_, bytes32 blockhash_, uint256 payload_) public pure returns (uint256) {
    uint256 randomHash = uint(keccak256(abi.encodePacked(blockhash_, payload_)));
    return (randomHash % (max_ - min_)) + min_;
  }

  function getRandomHash(bytes32 blockhash_, uint256 payload_) public pure returns (bytes32) {
    return keccak256(abi.encodePacked(blockhash_, payload_));
  }

  function calcRandomBytes1(uint256 min_, uint256 max_, bytes32 randomHash_, uint index_) public pure returns (uint) {
    uint randomHashIndex;
    if ( index_ == 31 ) {
      randomHashIndex = uint(uint8(randomHash_[index_])) * (uint8(randomHash_[0]));
    } else {
      randomHashIndex = uint(uint8(randomHash_[index_])) * (uint8(randomHash_[index_ + 1]));
    }
    return ((randomHashIndex ) % (max_ - min_)) + min_;
  }


}
