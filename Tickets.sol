// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EventTicket{ //bit of vague
    
  uint  ticketAmount; 
  uint  startAt; //event start time
  uint  endAt;   //event end time
  uint  timeRange;   //how long event was in seconds
  uint  totalAmount; //price of all tickets
  uint  numberOfTickets;
  string   message="Buy your First Ticket here";
   
 constructor(uint _ticektAmount){   //initialize values
     ticketAmount=_ticektAmount;
     startAt=block.timestamp;
     endAt=block.timestamp+7 days;
     timeRange=(endAt-startAt)/60/60/24;

 }
 //function to buy ticket        
 function BuyTicket(uint _value) public returns (uint _ticketId){
     numberOfTickets++;
      totalAmount=_value+totalAmount;
     _ticketId=numberOfTickets; //ticket id will be the number of that ticket
      
 }

 function getAmount()public view returns (uint ){
     return totalAmount;
 }


}