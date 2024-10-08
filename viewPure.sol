// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewPure{
    uint  Num1=9;
    uint  Num2=10;

 function getNumbyview()public view returns(uint product, uint total){
      
      //view keyword add adition level of access securty to the state var
       
       product=Num1*Num2; //if you remove 'view' it cant acces the state var data
       total=Num1+Num2;  // they are just accessing the data but cant update it

    //    Num1=20;  this will thorugh an error 
    //    Num2=40; 

 }

 function getNumbypure() public pure returns (uint){
//     return num1; 
//    num1=10; // // thety will through an error
    uint num=20;
    return num;//only local var are allowed

 }


 function getnummodify() public returns(uint product) {
    Num2=10;
    Num1=product;
    return product ;
 }

  function getnumacces(uint product) public {
    
    Num1=product;
    return ;
 }




}