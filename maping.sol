// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./structEnum.sol";
contract Mappings{
   //imports struct 
    mapping (address=>student) result;
    address[] student_result;

    function setValues() public   {
     student storage Student=result[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4];
        Student.name="shahnil";
        Student.subject="maths";
        Student.marks=99;

        //student_result.push(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)-1;
    }
    

  
}
contract Enum{
      // impoting and enum
     State public  hard;
 State public wet;
 State public  air;
State public ion;

    function set() public  {
            hard=State.solid;
            wet=State.liquid;
            air=State.gas;
            ion=State.plasma;

    }

}
