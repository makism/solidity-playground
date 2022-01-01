// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Bank {
    mapping(address => uint256) public accounts;

    modifier hasFunds(uint256 _amount) {
        require(_amount <= accounts[msg.sender], "Insufficient funds.");
        _;
    }

    function deposit() public payable {
        accounts[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) public hasFunds(_amount) {
        payable(msg.sender).transfer(_amount);
    }

    function checkAssets() public view returns(uint256) {
        return address(this).balance;
    }

}
