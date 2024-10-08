// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AbiDecode{
    struct MyStruct{
        string name;
        uint[2] nums;
    }
 
 //first we need to encode 
 function encodeDate(
    uint _amount,
    address _addr,
    uint[] calldata _arr,
    MyStruct calldata _mystruct
 )
 external pure  returns (bytes memory){
  return abi.encode(_amount,_addr,_arr,_mystruct);
 }

 //now we will decode this data
 function deCode(bytes calldata data)external pure returns(
    uint _amount ,
    address _addr,
    uint[] memory _arr,
    MyStruct memory _myStruct 
 ){
    (_amount,_addr,_arr,_myStruct)=abi.decode(data, (uint, address , uint[], MyStruct));
   
 }
}