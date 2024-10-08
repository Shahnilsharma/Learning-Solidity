// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//deploy this recciver first
contract B{
    //state varibale(storage) must be same
    uint public num;
    address public addr;
    uint public val;

    function SetVar(uint _num)public payable {
        num=_num;
        addr=msg.sender;
        val=msg.value;
    }
}

contract A{
  uint public num;
  address public addr;
  uint public  val;

  function SetVars(address payable _reciever, uint _num)external payable {
        //  A's  storage is set B is not modified
         (bool success, )=_reciever.delegatecall(
            abi.encodeWithSignature("SetVar(uint _num)", _num)
         );
         require(success,"tx failed");

  } 
}