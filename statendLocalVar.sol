// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract statlocvar{
    //varibles dec outside function and under contract are state varibales
    uint public stat1;
    bytes public stat2;
    address public stat3;

 function localvar()public pure  returns (uint){
        //variables declared in a function are local varibles

          uint  local=20; 
          return local;
    


 }



}