// SPDX-License-Identifier: ISC
pragma solidity ^0.8.7;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract Gold is Initializable, AccessControlUpgradeable, ERC20Upgradeable {

    uint constant public MAX_SUPPLY = 100000000 ether;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /**
     * @notice Initialize Gold token
     */
    function initialize() public initializer {
        AccessControlUpgradeable.__AccessControl_init();
        ERC20Upgradeable.__ERC20_init_unchained("PW-GOLD", "PWG");

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @notice Mint the specified amount of Gold 
     * @param _to Gold receiver address
     * @param _amount Amount of Gold to mint
     * @dev _amount has to include 18 decimals
     */
    function mint(address _to, uint _amount) external onlyRole(MINTER_ROLE) {
        require(totalSupply() + _amount <= MAX_SUPPLY, "Gold: max supply reached");

        _mint(_to, _amount);
    }

    /**
     * @notice Burn the specified amount of Gold
     * @param _from Address from which tokens will be burned
     * @param _amount Amount of Gold to burn
     * @dev _amount has to include 18 decimals
     */
    function burn(address _from, uint _amount) external onlyRole(BURNER_ROLE) {
        _burn(_from, _amount);
    }

    /**
     * @notice Trasfer _amount Gold from _from to _to
     * @param _from The address from which Gold will be taken
     * @param _to The address that will receive Gold
     * @param _amount The amount of Gold to transfer
     */
    function transferFromWithBurn(address _from, address _to, uint _amount) external onlyRole(BURNER_ROLE) {
        transferFrom(_from, _to, _amount);
    }
}
