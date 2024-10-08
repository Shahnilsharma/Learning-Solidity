//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//use abstract key word
abstract contract AbstractContract{
    //function to get string values
    function getstring(string memory _str)public pure virtual returns(string memory);
    //function to set uints
    function set(uint _a, uint _b)public virtual {}
    //fucvtion to add
    function add()public virtual returns(uint){}
}
contract derived is AbstractContract{
    uint private num1;
    uint private num2;
    //initializing all the abstract functions
    function getstring(string memory _str)public pure override returns(string memory){
        return _str;
    }

     function set(uint _a, uint _b)public override {
        num1=_a;
        num2=_b;
     }
    function add()public view override returns(uint ){
        return num1+num2;
    }
}
 contract Call is derived{
    //creating an object of abstract cont:
    AbstractContract abs;
    //to initialize the object
    constructor(){
        abs=new derived();
    }
    //function to call data
    function getValues()public  returns (string memory,uint){
        abs.set(10, 11);
        return (abs.getstring("shahnilsharma"),abs.add());
    }

 }

/// @title A contract for describes the properties of Abstract Contract
/// @author shahnil sharma
/// @notice For now, this contract just show the functionalities of Abstract Contract