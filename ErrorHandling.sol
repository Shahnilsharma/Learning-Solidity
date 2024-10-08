// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ErrorHandler{

 //require 

  // function input(uint256 _input)public pure  returns(string memory)
  // {
  //   require(_input>=0 ,"inavlid uint8");// if the condition doenst meet it will show the result 
  //   require(_input<=255,"inavalid uint8");
     
  //   return "input is uint8";
  // }


//assert

  // bool public result;

  // function sum(uint _a, uint _b) public   {
  //   uint summ=_a+_b;
  //   assert(summ<=255);//this consume all the gas if condition is false
  //   result=true;
  // }


function revertError(uint _a, uint _b)public pure  returns (string memory, uint){
  uint sum=_a+_b;
  if(sum>=255 || sum<=0){
    revert("overflow");
  }
  else 
    return ("underflow", sum);
}
}