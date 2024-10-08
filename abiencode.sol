// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// interface IERC20 {
//     function transferace(address , uint)external ;
// }
// contract Token{
//     function transferen(address,uint) external {}
// }
// contract AbiEncode{
//     function test(address _to, bytes calldata data )external {
//        (bool ok,)=_to.call(data);
//        require(ok,"call failed");
//     }

//     function encodeWithSignature(address _to, uint _amount)external  pure returns (bytes memory){
//         //typo is not checked bcz its int string
//         return abi.encodeWithSignature("transferen(address,uint)", _to,_amount);
//     }
//     //type is not checked here 
//     function encodeWithSelector(address _to, uint _amount)external  pure returns(bytes memory){
//         return abi.encodeWithSelector(IERC20.transferace.selector, _to, _amount);
// }

//    function encodeCall(address _to, uint _amount)external pure returns(bytes memory){
//     //type plus typo erros wont be checked and compiled
//        return abi.encodeCall(IERC20.transferace,(_to, _amount));
//          }

// }




       // // encodePacked(AAA, BBB) -> AAABBB
       // // encodePacked(AA, ABBB) -> AAABBB
contract ABIENCODE{
    function abiValue()public pure returns(bytes memory){
        bytes memory val=abi.encodePacked("shahnil","sharma");
        return val;
    }
    function abiiValue()public pure returns(bytes memory){
        bytes memory val=abi.encodePacked("shahnilha","rma");
        return val;
    }

}


// contract decode{
//     bytes public bi=0x736861686e696c736861726d61;
  
//     function decodee()public pure returns(string memory){
//         string  memory val=abi.decode(bi,);
//     }
// }

