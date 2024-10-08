// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./InterfaceExample.sol";
contract interfaceImplementation is InterfaceExample{
    uint private num1;
    uint private num2;
    
//inheriting functions from interface
//defining fnction to get any string
     function getstr(string memory _str )public pure override returns (string memory){
        return _str;
     }
     //defining function to get 2 numbers
     function getNum(uint _a,uint _b) public override{
        num1=_a;
        num2=_b;
     }
     //defining function of interface to add 2 numbers
     function add()public view  override returns (uint){
       return  num1+num2;
     }
}

contract Call is interfaceImplementation{
    //we wil call all the interface functions in this contract
    //creating an object of the interface
    InterfaceExample obj;
    //to initialize with the deployment of the contract we wil use contructor
    constructor(){
        obj = new interfaceImplementation();
    }
    //make another function to call and get values of those functions at once
    function getValues()public returns (string memory,uint)
    {
         obj.getNum(11, 12);
         return (obj.getstr("shahnill"),obj.add());
    }

}
