// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Inheritance{
//     Solidity supports multiple inheritance. Contracts can 
//     inherit other contract by using the is keyword.
// Function that is going to be overridden by a child
//  contract must be declared as virtual.
// Function that is going to override a parent 
// function must use the keyword override.
 
}
contract A{
    function text() public pure  virtual returns (string memory){
        return "A";
    }
}
contract B is A{
    function text()public pure virtual override returns (string memory){
        return "B";
    }
}
contract C is B{
    function text()public pure virtual  override returns(string memory) {
        return  "C";
    }
}
contract D is B,C{
//     Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to Left, and in depth-first manner.
    function text() public  pure override(B,C) returns(string memory)
    {
        return  super.text();
    } 
}

contract E is A,C{
    function text () public pure override (A,C) returns (string memory){
        return super.text();
    }
}