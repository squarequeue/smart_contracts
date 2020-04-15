pragma solidity 0.5.14;

/**
 * @title SQ IEO token is issued by inheriting ERC20 Token of OpenZeppelin. Transparency was secured with the simplest code.
 * @notice Token swap will proceed in the future. Keep your IEO tokens well.
 * @author SquareQueue - SquareQueue@gmail.com https://github.com/squarequeue
 *
 * Unsold SQ coins at IEO will be burned out. There is no SQ supply other than IEO and StakeHoler(like POS) rewards.
 * SQ team will be allocated 1% SQ coins after 2years. Befor That time, it is 0%
 * Max supply is 50,000,000‬ and IEO supply is 10,000,000‬
 */
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";

contract SQ_IEO_token is ERC20, ERC20Detailed, ERC20Burnable {
    uint8 public constant DECIMALS = 18;
    uint256 public INITIAL_IEO_SUPPLY = 10000000 * (10 ** uint256(DECIMALS)); 

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Squaure queue IEO token", "SQ coin", DECIMALS) {
        _mint(msg.sender, INITIAL_IEO_SUPPLY);
    }
}
