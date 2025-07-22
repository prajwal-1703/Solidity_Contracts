// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract vehicle{
    string brand;
    constructor (string memory _brand) {
        brand = _brand;
    }

    function description() public virtual returns (string memory){
        return "Hi there this is a vehicle";
    }
}