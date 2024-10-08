// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Constant{
// //    gas	103894 gas
// // transaction cost	90342 gas 
// // execution cost	34630 gas 

//     address  myadd=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

// // gas	76883 gas
// // transaction cost	66854 gas 
// // execution cost	12464 gas 
  
//   address constant MY_ADDRESS=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


//  //ifelse and ternary  
//    string public  mystring;
//  function ifelse(address _myadd) public  returns (string memory){
// //ternary condition
//     return _myadd==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4?mystring="my address": mystring="not my address";
//  }

//while loop 
uint256[] arr;
uint8 j=0;
function loop() public returns(uint256[] memory){
       while(j<5){
        j++;
        arr.push(j);
       }
       return arr;
} 
}

