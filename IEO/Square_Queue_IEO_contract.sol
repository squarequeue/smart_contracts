pragma solidity 0.5.14;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/d864228624e3661eaf10b7d00995110116e51094/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/d864228624e3661eaf10b7d00995110116e51094/contracts/token/ERC20/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/d864228624e3661eaf10b7d00995110116e51094/contracts/token/ERC20/ERC20Detailed.sol";

contract SQ_IEO_token is ERC20, ERC20Detailed, ERC20Burnable {
    uint8 public constant DECIMALS = 18;
    uint256 public INITIAL_IEO_SUPPLY = 450000000 * (10 ** uint256(DECIMALS)); 

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Squaure queue IEO token", "SQ coin", DECIMALS) {
        _mint(msg.sender, INITIAL_IEO_SUPPLY);
    }
}