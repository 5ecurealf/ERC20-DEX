pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AlfToken is ERC20 {
    constructor(uint initialSupply) ERC20("AlfCoin", "ALF") {
        _mint(msg.sender, initialSupply);
    }
}
