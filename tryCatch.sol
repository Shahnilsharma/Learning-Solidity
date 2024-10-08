// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Normal{
    address public owner;

    constructor(address _addrr){
        require(_addrr!=address(0),"invalid adress");
       assert(_addrr!=0x0000000000000000000000000000000000000001);
        owner=_addrr;          
}
function myFunc(uint _X)public pure returns(string memory){
    require(_X!=0,"require failed");
    return "my function was called";
}
}
contract TryCatch{
    event log (string message);
    event Response(bytes data);
   Normal public  normi;
   constructor(){
    normi=new Normal(msg.sender);

   }
   function tryCatchExternalCall(uint _i) public {
    try normi.myFunc(_i) returns (string memory result){
        emit log(result);
    }
    catch {
        emit log("ecternal called failed");
    }
   }
function tryCatchNewContract(address _addr)public {
    try new Normal(_addr) returns (Normal norm){
        emit log("my function createrd");
    }
    catch Error(string memory result){
        emit log(result);
    }
    catch (bytes memory result){
        emit Response(result);
    }
} 

    
   }

