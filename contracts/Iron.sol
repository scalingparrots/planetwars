// SPDX-License-Identifier: ISC
pragma solidity ^0.8.7;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract Iron is Initializable, AccessControlUpgradeable, ERC20Upgradeable {

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /**
     * @notice Initialize Iron token
     */
    function initialize() public initializer {
        AccessControlUpgradeable.__AccessControl_init();
        ERC20Upgradeable.__ERC20_init_unchained("PW-IRON", "PWI");

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @notice Mint the specified amount of Iron
     * @param _to Iron receiver address
     * @param _amount Amount of Iron to mint
     * @dev _amount has to include 18 decimals
     */
    function mint(address _to, uint _amount) external onlyRole(MINTER_ROLE) {
        _mint(_to, _amount);
    }

    /**
     * @notice Burn the specified amount of Iron
     * @param _from Address from which tokens will be burned
     * @param _amount Amount of Iron to burn
     * @dev _amount has to include 18 decimals
     */
    function burn(address _from, uint _amount) external onlyRole(BURNER_ROLE) {
        _burn(_from, _amount);
    }

    /**
     * @notice Trasfer _amount Iron from _from to _to
     * @param _from The address from which Iron will be taken
     * @param _to The address that will receive Iron
     * @param _amount The amount of Iron to transfer
     */
    function transferFromWithBurn(address _from, address _to, uint _amount) external onlyRole(BURNER_ROLE) {
        transferFrom(_from, _to, _amount);
    }
}
