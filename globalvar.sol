// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Global{
    address public me;
    //other global vars 
    address public myblockhash;
    uint public difficulty;
    uint public gasLimit;
    uint public Number;
    uint public timeStamp;
    uint public Value;
    uint public NowOn;
    address public Origin;
    uint public gasPrice;
    bytes public callData;
    bytes4 public firstFour;
    
 
 constructor(){
    //here the msg.sende is the global variable 
    // and it is the address of who ever deploys the contract
    me=msg.sender;
// address in output after deployment( 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)
// address of acc which deployed it(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)
   
   myblockhash=block.coinbase;
  // difficulty=block.difficulty;
   gasLimit=block.gaslimit;
   Number=block.number;
   timeStamp=block.timestamp;

  // Value=msg.value;
   //  NowOn=block.now;

   gasPrice=tx.gasprice;
   Origin=tx.origin;

    callData=msg.data;
    firstFour=msg.sig;
            




 }
}