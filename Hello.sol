
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFirstContract{
 address public add ; 
    uint public  diff; 
    uint public  blknmbr;
    bytes32 public  blkhsh;
    uint public  time;
     uint public  left;
     address public  here;
     bytes4 public  sign;
     bytes public  noww;
 constructor(
    
     ) {
 add=block.coinbase;
 diff=block.prevrandao;
//  msgg=msg.value;
 blknmbr=block.number;
 blkhsh=blockhash(blknmbr);
 time=block.timestamp;
 left=gasleft();
here=msg.sender;
sign=msg.sig;
noww=msg.data;





 }
}