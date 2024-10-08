// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MedicalIndustry {
    // structure of patients data 
    struct Patient{
        string name;
        uint256 age;
        string gender;
        string[] doctor;
        string[] conditions;
        string[] departments;
        string[] procedures;
        string[] medications;
        bool isAlive;
    }
    //to access the structure using the address we will need a mapping
    mapping(address => Patient) public  patientData;
    
    // function to add a patient
    function addPatient(
        string memory _name,
        uint256 _age,
        string memory _gender,
        string[] memory _doctor,
        string[] memory _conditions,
        string[] memory _departments,
        string[] memory _procedures,
        string[] memory _medication
    ) public  {  
        Patient memory patient = Patient({
           name: _name,
           age: _age,
           gender: _gender,
           doctor: _doctor,
           conditions: _conditions,
           departments: _departments,
           procedures: _procedures,
           medications: _medication,
           isAlive: true
    });
    
    // Patient memory patient=Patient[_name, _age,_gender,_doctor,_conditions,_departments,_procedures,_medication,true];

//only the patients address is used to add itself
patientData[msg.sender]=patient;
    }

// fucntion to get the patients information
function getPatient(address  _patientAddr)public view returns(
    string memory,
    uint256,
    string memory,
    string[] memory,
    string[] memory,
    string[] memory,
    string[] memory,
    string[] memory,
    bool 
){ 
    Patient memory patient = patientData[_patientAddr];
    return (
        patient.name,
        patient.age,
        patient.gender,
        patient.doctor,
        patient.conditions,
        patient.procedures,
        patient.departments,
        patient.medications,
        patient.isAlive
    );
 }

//to check if the patient exist or not before updating the data
// function patientExist(address  _addr)public returns(bool){
//     if(patientData[_addr]){
//         return false;
//     }
//     else
//      return true;
// }

//to check if the patient is deceased or not
function patientIsAlive(address _addr)public view returns(bool){
    Patient memory patient=patientData[_addr];
    if(patient.isAlive==true)
    return true;
    else 
    return false;

}
 // function to update the patients data
 function updatePatient(
    uint256 _age,
    string[] memory _doctor,
    string[] memory _conditions,
    string[] memory _departments,
    string[] memory _procedures,
    string[] memory _medication,
    bool _isAlive
 ) public view {
    // require(patientExist(msg.sender),"This patient doesnot exist");
    Patient memory patient=patientData[msg.sender];
    require(patientIsAlive(msg.sender)==true, "Sorry! The patient is Deceased");
    patient.age= _age;
    patient.doctor= _doctor;
    patient.conditions= _conditions;
    patient.departments= _departments;
    patient.procedures= _procedures;
    patient.medications= _medication;
    patient.isAlive= _isAlive;
 }


}