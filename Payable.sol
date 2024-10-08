// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Payable{
    address payable public owner; 
    constructor()payable {
        owner=payable (msg.sender);
    }

 function deposit()public payable {}
 //this function has keyword payable so it grabs the amount 
 //from user and automatically gets those ether

 //if the user gives amount this function will throw error cuz its not payable
 function unpayed()public {}

//functio to withdraw available balance
function Withdraw() payable public {
    //the address(0) or address(this) are same means this contract
    uint amount=address(this).balance;
// this snppet is to send or recieve particular transataction ata ny address
                //this is address 
                //   |    
               //    v
   (bool success,) =owner.call{value: amount}("");
   require(success,"transaction cant be made");
}
// function to transfer amount to any address
function transfer(address _adr, uint _amnt)payable public {
   (bool success,)=_adr.call{value:_amnt}("");
   require(success,"transfer unsuccess");

}
}