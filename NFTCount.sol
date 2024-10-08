// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract NFTCount{
    uint NFTnumber;

    //function to increase nft 
    function addNFT()public {
     NFTnumber++;
    }

    //function to delete nft
    function deleteNFT()public {
        NFTnumber--;
    }

    //function to check number of total nfts
    function getNFT() public view returns (uint){
        return NFTnumber;
    }
}