// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Events{

//     we can also add an index to our event.
//The indexed parameters for logged events will allow 
//you to search for these events using the indexed parameters as filters.
//      On adding the different fields to our event, 
//      we can add an index to them it helps to access them 
//      later but of course, it’s going to cost some more gas!
// IMP: We can add atmost 3 indexes in one event.

    event log(address indexed sendr, string message);
    //no need to give variable names just pass datatypes
    event anotherlog();
    function eventListen()public {
        emit log(msg.sender,"shahnil");
        emit log (address(0),"notshahnil");
        emit anotherlog();
        
    }
}
contract anotherEvent{
    event test(
        uint indexed ,
        address,
        address indexed ,
        uint 
    );
    function set (address _to,uint _amount)public {
        emit test(block.timestamp,msg.sender , _to, _amount);
    }

}