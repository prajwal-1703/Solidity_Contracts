//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint num = 0;

    constructor(uint _num) {
        num = _num;
    }

    function add(uint _value) public {
        num += _value;
    }
    function sub(uint _value) public {
        num -= _value;
    }
    function mul(uint _value) public {
        num *= _value;
    }
    function div(uint _value) public {
        require(_value != 0, "Cannot divide by zero");
        num /= _value;
    }
    function getValueadd() public view returns(uint) {
        return num;
    }
}
    
    


