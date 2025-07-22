// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

contract NameRegistry{
    mapping(address => string) names;

    constructor() {

    }
    function setName(string memory _name) public {
       
        names[msg.sender] = _name;
    }

    function getName() public view returns (string memory ) {
        return names[msg.sender];
    }
}