// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Recieve{
    // to recieve we have 2 methods 
    //recive by recive()
    receive() external payable { }
    //when ther is no data with the ethers

    //another method is fallback()
    fallback() external payable { }
    //when there is data along with the amount recieved

    //functiont to check balance
    function checkBalance()public payable returns (uint){
        return address(this).balance;
    }
}

contract SendEthers{
    //the first method is by transfer method which is not recommended
    function sendViaTransfer(address payable _addr)public payable {
        _addr.transfer(msg.value);
    }
    //now by send method which is also not reccomended
    function sendViaSend(address payable _to)public payable{
        _to.send(msg.value);
    }
    //now the most reccomended method which is call() and it returns a bool

    function senViaCall(address payable _to)public payable returns (bool){
        (bool hasSent,bytes memory _msg)=_to.call({value:msg.value}(""));
    }
}