// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract base{
//     public - any contract and account can call

    function Public()public pure  returns(string memory){
        return "function is public";
    }
    function callpub() public  pure virtual returns(string memory){
        return Public();
    }


// private - only inside the contract that defines the function

    function Private()private pure returns (string memory){
        return "function is private";
    }


// internal- only inside contract that inherits an internal function

    function Internal()internal  pure virtual  returns(string memory){
        return "function is internal";
    }

// external - only other contracts and accounts can call
   
    function External() external pure returns(string memory){
        return "function is external";
    }




string public pubstate="publicstate";
string private privstate="private state";
string internal internstate="internal state";
// State variables cannot be external so this code won 't compile.
// string external external Var = "my external variable";

}

contract child is base{

    function callfunc()public pure  returns (string memory, string memory){
        return ( super.callpub(),super.Internal());
       
    }


}
