pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ChaseTheMagicYieldDragon is ERC20 {
    constructor(uint256 _initialSupply) public ERC20("YieldDragon", "YDRG") {
        _mint(msg.sender, _initialSupply);
        // premine an eclectic list of addresses, including the dev team
    }

    function fightGoblin() public {
        uint256 flip = block.timestamp;
        if (flip % 4 == 0 )
            mint(500);
        else
            burn(500);
    }

    function fightDragon() public {
        uint256 flip = block.timestamp;
        if (flip % 10 == 0)
            mint(10000);
        else
            burn(500);
    }
}
