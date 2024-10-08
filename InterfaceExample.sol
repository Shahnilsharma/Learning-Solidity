// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface InterfaceExample {
    //always use external functions for interfaces
    //they are implicitly virtual
    // do not have any definition or any state variables,
    //  constructors, or any function with implementation,
    //   they only contain function declarations 
    function getstr(string memory _str)external   returns(string memory);
    function getNum(uint _a,uint _b)external ;
    function add()external  returns(uint);
    
    
}