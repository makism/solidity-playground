// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract LearnMapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public friendsContacts;

    function simpleMapping() public {
        balances[msg.sender] = 100;
        friendsContacts[msg.sender][address(this)] = true;
    }

    function updateMapping() public {
        uint curr = balances[msg.sender];
        curr += 1;

        balances[msg.sender] = curr;
    }

    function getNoneMapping() public {
        uint balance = balances[address(1)];
    }

    function deleteMapping() public {
        delete balances[msg.sender];
    }
}