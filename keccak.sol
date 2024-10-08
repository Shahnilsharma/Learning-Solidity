// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract HashKeccak{
    function hash(
        string memory _name,
        uint _num,
        address _addr
    )public pure returns(bytes32 ) {
      
      return keccak256(abi.encodePacked(_name,_num,_addr));
    }

    function collision(
        string memory _name,
        string memory _anothername
        )public pure returns(bytes32){
            //(AAA,BBB)->keccak256->AAABBB
            //(AAAV,BB)->keccak256->AAABBB

            return keccak256(abi.encodePacked(_name,_anothername));
            //insteead use encode ()
        }
}
contract guess{
    bytes32 public answer=0x8dfdabba5f359b923928ed0fea88cbbe1a62fe53236d3fb9867b476dec1f33b4;
    function guessTheMagicalWord(string memory _name)public view  returns (bool){
        return keccak256(abi.encodePacked(_name))==answer;
    }
}