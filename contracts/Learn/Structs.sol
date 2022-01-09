// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract LearnStructs {
    struct Car {
        string model;
        uint year;
        address owner;
    }


    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function createCars() public {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({model: "Lambo", year: 2000, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
    }

    function getCar() public {
        Car storage c = cars[0];
        c.year = 2020;
    }

    function deleteCar() public {
        delete cars[0];
        delete cars[1].owner;
    }
}