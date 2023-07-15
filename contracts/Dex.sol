pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DEX {
    IERC20 public associatedToken;

    uint price;
    address owner;

    constructor(IERC20 _token, uint _price) {
        associatedToken = _token;
        price = _price;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "you are not the owner");
        _;
    }

    // check if the owner of this contract has given an allowance to the other contract
    function sell() external onlyOwner {
        uint allowance = associatedToken.allowance(msg.sender, address(this));
        require(
            allowance > 0,
            "you must allow this contract an allowance of at least one token"
        );
        bool sent = associatedToken.transferFrom(
            msg.sender,
            address(this),
            allowance
        );
        require(sent, "Failed to send");
    }
}
