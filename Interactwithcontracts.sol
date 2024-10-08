// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract BeingCalled{
    //declare satet variables
    uint public Value;
    uint public x;
//function to set value of X
    function setX(uint _x) public  returns (uint){
        x=_x;
      return x;

    }
    //function to set x and send ethers
    function setXandEthers(uint _x)public payable returns (uint , uint){
        Value=msg.value;
        x=_x;
        return (x,Value);

    }
}

//another contract which will interact with first contract
contract Caller{
    function setX(BeingCalled called,uint val) public payable {
        // uint x=
        called.setX(val);
    }
//we will use this function to set x useing address
    function SetXfromAddress(address _addr,uint _x)public payable {
        BeingCalled called = BeingCalled(_addr);
        called.setX(_x);
    }

    //now to set x and send ethers 
    function setXandEthers(BeingCalled called,uint _x)public payable {
        // (uint x, uint Value)=
        called.setXandEthers{value: msg.value}(_x);
    }
}