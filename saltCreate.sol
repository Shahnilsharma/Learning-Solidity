// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Car{
//     "When creating a contract, the address of the contract is computed
//      from the address of the creating contract and a counter that is 
//      increased with each contract creation.

// If you specify the option salt (a bytes32 value), then contract
//  creation will use a different mechanism to come up with the 
//  address of the new contract: It will compute the address from
//   the address of the creating contract, the given salt value, 
//   the (creation) bytecode of the created contract and the constructor arguments."

    address public owner;
    string public  model;
    address public carAddress;

    constructor(address _owner,string memory _model)payable {
        owner = _owner;
        carAddress=address(this);
       model = _model;   
    }



}

contract Carfactory{    
    Car[] public cars;
    function create(address _owner , string memory _model)public  {
        Car car=new Car(_owner, _model);
        cars.push(car);
    }
    
    function createAndSendEther(address _owner, string memory _model)public payable {
        Car car=(new Car){value:msg.value}(_owner, _model);
        cars.push(car);
    }


    function create2(
        address _owner,
        string memory _model,
        bytes32 _salt
        )public  {
            Car car=new Car{salt: _salt}(_owner,_model);
            cars.push(car);
    }

    function create2AndSendEthe(
        address _owner,
        string memory _model,
        bytes32 _salt
    )public payable {
        Car car = (new Car){value: msg.value, salt: _salt}(_owner,_model);
        cars.push(car);
    }


    function getCar(uint _index)public view returns(
        address owner,
        string memory model,
        address carAddress,
        uint balance
    )
    {
        Car car=cars[_index];
        return (car.owner(), car.model(), car.carAddress(), address(car).balance);
    }


   
    
}