// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Fallback{
    //will need a event to get the message and the gasleft
    event log(string,uint );
    //function to recieve via fallback and recieve
    fallback()external payable {
        emit log("fallback",gasleft());

    }
     receive() external payable {
        //when msg.data is empty
        emit log("recieve",gasleft());
     }

     function checkBalance()public view returns (uint) {
           return address(this).balance;
     }
}
contract TransfertoFallback{
    function fallbackviatranfer(address payable _addr)public payable {
        _addr.transfer(msg.value);
      
    }
     function callfallback(address payable _addr)public payable {
        //this returns a bool value ensuring tx wass succes or not
        (bool hasSent,)=_addr.call{value: msg.value}("");
        require(hasSent,"tx unsucces");
     }
}  
// It is also executed if the caller meant to call a function that is not available
//  or receive() does not exist or msg.data is not empty.
// It is mandatory to mark it external.
// It is limited to 2300 gas when called by another 
// function by using transfer() or send() method . 
// It is so for as to make this function call as cheap as possible.