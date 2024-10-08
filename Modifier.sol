// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Modifier{
    address public  owner;
    uint public x=10;
    bool public locked;

    constructor(){
        owner=msg.sender;
    }
    //to restrict access
   modifier onlyOwner()  {
     require(msg.sender==owner,"you aint the owner nigga");
      _;
   }
   //to validate data
   modifier validateData(address _data){
    require(_data!=address(0), "invalid address");
    _;
   }
   //function to use modifiers
   function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
    owner=_newOwner;
   }
   
   //modifier for noreentrancy
   modifier noReetrancy(){
    require(!locked," No Reetrancy");
    locked=true;
    _;
   locked=false;
   }

   function decrement(uint i)public noReetrancy{
    x-=1;
    if(i>1)
    {
        decrement(i-1);
    }
    }
}
