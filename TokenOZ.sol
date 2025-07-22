// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DevCoin is ERC20, Ownable {
    constructor () ERC20("DevCoin", "DCN") Ownable(msg.sender) {
        _mint(msg.sender, 100000000);
    }

    function mintTo(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
}