// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract functions{
    uint public hey=12;

function get() public view returns (uint){
 return hey;    
}

function update(uint _a) public {
    hey=_a;
}
function getup(uint _a, uint _b) public returns (uint){
    hey=_a+_b;
    return hey;
}

}
