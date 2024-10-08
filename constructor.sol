// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract X{
    string public name;
    constructor(string memory _name){
     name=_name;
    }
}
contract Y{
    string public text;
    constructor(string memory _text){
        text=_text;
    }
}
//first method to pass para to parent cont
contract A is X("shahnil"),Y("sharma"){}//orde is very important
//second method
contract B is X,Y{
    constructor(string memory _name, string memory _text)  X(_name) Y(_text){}
}

//parent constructor are always called in the order of inheritance
// regardles of the order of parent contract listed in 
//the constructor of child contract
contract C is X,Y{
    constructor()X("x in c") Y("y in c"){}
}
contract D is X,Y{
    constructor()Y("x in c") X("y in c"){}
}