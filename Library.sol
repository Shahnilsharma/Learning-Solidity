//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// library helps to prevent hacks by performing certain math operations
// cannot hold state variables, fallback or payable functions also cannot be 
// created inside the library as it cannot store ethers
// The library does not have state variables
library Math{
    
    function pow(uint a, uint b)public pure returns(uint){
        return (a**b);
    }
    
}


contract LibAccess{
    //accessing lib using for 
    //syntex(uisng <libName> for <datatype>
    //we will need a data type which we are accesing from a library
     using Math for uint;
     //need to use it outside the function
     function withFor(uint _num1, uint _num2)public pure  returns (uint) {
        require(_num1!=0,"Enter valid numbers");
        return (_num1.pow(_num2));
     }
     
     //without for keyword
     function Withoutfor(uint _num1,uint _num2)public pure returns (uint){
        require(_num1!=0,"invalid inputs");
        return (Math.pow(_num1,_num2));
     }

    

}
