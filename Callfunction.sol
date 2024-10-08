// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Reciever{
//     This is the recommended method to use when you're 
//     just sending Ether via calling the fallback function
// However it is not the recommend way to call existing functions.
event Recieved(address caller,uint amount, string message);
//function for recieving 
receive() external payable {
    emit Recieved(msg.sender,msg.value,"Reciever Recive");
 }

 // fallback if msg.data is not empty
 fallback()external payable{
    emit Recieved(msg.sender, msg.value, "Reciever Fallback");
 }

 //any function
 function xyz(string memory _msg,uint _x)external payable returns (uint){
    emit Recieved(msg.sender,msg.value,_msg);
    return _x+1;
 }

}
contract Sender{
    event Response(bool success, bytes data);
    //send by call
    // Let's imagine that contract Caller does not have the source code for the
    // contract Receiver, but we do know the address of contract Receiver and the function to call.
    function sendByCall(address payable  _reciever)public payable {
      (bool success, bytes memory data)=_reciever.call{value: msg.value, gas: 300}(abi.encodeWithSignature("xyz(string memory _msg,uint _x)", "call reciver xyz",123));
      emit Response(success, data);
    }

    //calling a function that does not exist
    function DoesnotExistfunc(address payable _reciever)public  payable {
        (bool success,bytes memory data)=_reciever.call{value: msg.value , gas: 500}(abi.encodeWithSignature("functionDoesnotExist()"));
        emit Response(success, data);
    }
}