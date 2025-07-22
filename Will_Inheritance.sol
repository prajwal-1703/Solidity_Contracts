// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Inheritance {
    uint startTime;
    uint tenYears;
    uint public lastVisited;
    address owner;
    address recipient;

    constructor(address payable _recipient){
        //tenYears = 60 * 60 * 24 * 365 * 10;
        tenYears = 10;
        startTime = block.timestamp;
        lastVisited = block.timestamp;
        owner = msg.sender;
        recipient = _recipient;

    }
    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");
        _;
    }
    modifier onlyRecipient(){
        require(msg.sender == recipient, "Not recipient");
        _;
    }
    function deposit() public payable onlyOwner {
        lastVisited = block.timestamp;
    }
    function ping() public onlyOwner {
        lastVisited = block.timestamp;
    }
    function claim() external onlyRecipient{
        require(lastVisited < block.timestamp - tenYears);
        payable(recipient).transfer(address(this).balance);
    }
}


