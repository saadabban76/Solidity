// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract Car {
    address public owner;
    string public model;
    address public carAdrr;

    constructor(address _owner, string memory _model) payable {
        owner = _owner;
        model = _model;
    }
}

contract CarFactory {
    Car[] public cars; // cars array will return the set of contract addresses of the car contract.

    function create(string memory _model) public {
        // code to create the new contract inside the contract.
        Car newCar = new Car(address(this), _model);
        cars.push(newCar);
    }

    function createAndSendEther(address _owner, string memory _model) public payable {
        // code to create the new contract inside the contract.
        Car newCar = (new Car){value: msg.value}(_owner, _model);
    }

    function listCars() view public returns(Car[] memory) {
        return cars;
    }
}
