// SPDX-License-Identifier: ISC
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Staking is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable token;
    uint public immutable start; 
    uint public immutable half;
    uint public immutable end;

    mapping (address => uint) public deposited;

    uint public totalDeposited;
    uint public availableRewards;
    uint public extraRewards; // rewards that are not claimed by who withdraws before end
    uint public totalDepositedForExtraRewards; // totalDeposited without the amount of tokens deposited by accounts who unstakes before end

    event Stake(address indexed account, uint amount, uint timestamp);
    event Unstake(address indexed account, uint amount, uint timestamp);

    /**
     * @notice Constructor
     * @param _token Token address
     * @param _start Start timestamp of the staking 
     * @param _duration Durantion of the staking in seconds
     */
    constructor (address _token, uint _start, uint _duration) {
        token = IERC20(_token);
        start = _start;
        end = _start + _duration;
        half = _start + _duration / 2;
    }

    /**
     * @notice Fund the staking
     * @param _amount Amount of token to add to the rewards
     */
    function fund(uint _amount) external {
        require(block.timestamp < half, "Staking: too late");
        SafeERC20.safeTransferFrom(token, msg.sender, address(this), _amount);

        availableRewards += _amount;
    }

    /**
     * @notice Deposit tokens in the staking
     * @param _amount Amount of tokens to stake
     */
    function stake (uint _amount) external {
        require(block.timestamp <= start, "Staking: already started");
        require(_amount > 0, "Staking: invalid amount");

        SafeERC20.safeTransferFrom(token, msg.sender, address(this), _amount);

        deposited[msg.sender] += _amount;
        totalDeposited += _amount;
        totalDepositedForExtraRewards += _amount;

        emit Stake(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice Withdraw tokens and, eventually, rewards
     * @param _amount Amount of tokens to unstake
     * @dev Rewards are fully distributed based how many tokens the caller has staked
            with respect to total deposited quantity. If this function is called before
            end has passed, only half of the rewards will be transferred. The other half
            that is not claimed will be distributed to users that unstake after end
     */
    function unstake (uint _amount) external {
        require (block.timestamp >= half, "Staking: too early");
        require (deposited[msg.sender] > 0, "Staking: nothing to claim");
        require (_amount <= deposited[msg.sender], "Staking: amount too high");
        
        // Compute rewards
        uint rewards = availableRewards * _amount / totalDeposited;
        if (block.timestamp < end) {
            // can claim half of the expected rewards
            rewards /=  2;
            extraRewards += rewards;
            totalDepositedForExtraRewards -= _amount;
        } 
        else {
            // claim also a share of the unclaimed rewards of the case above
            rewards += extraRewards * _amount / totalDepositedForExtraRewards;
        }

        // Sanity check
        uint toDistribute = rewards + _amount;
        uint balance = IERC20(token).balanceOf(address(this));
        if (toDistribute > balance) {
            toDistribute = balance;
        }

        SafeERC20.safeTransfer(token, msg.sender, toDistribute);
        deposited[msg.sender] -= _amount;

        emit Unstake(msg.sender, _amount, block.timestamp);
    }

    /**
      * @notice Withdraw tokens before start staking
      * @param _amount Amount of tokens to unstake
      */
    function removeStake (uint _amount) external {
        require (block.timestamp < start, "Staking: too late");
        require (deposited[msg.sender] > 0, "Staking: nothing to claim");
        require (_amount <= deposited[msg.sender], "Staking: amount too high");

        deposited[msg.sender] -= _amount;
        totalDeposited -= _amount;
        totalDepositedForExtraRewards -= _amount;

        SafeERC20.safeTransfer(token, msg.sender, _amount);


        emit Unstake(msg.sender, _amount, block.timestamp);
    }
}
