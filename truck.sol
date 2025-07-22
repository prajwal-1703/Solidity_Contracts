// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./vehicle.sol";

contract truck  is vehicle{
    uint noWheels;
    constructor(string memory _brand, uint _wheels) vehicle(_brand){
        noWheels = _wheels;
    }
        function description() public pure override returns (string memory){
            return "I am a truck";
        }
}
