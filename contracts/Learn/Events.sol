// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract LearnEvents {

    event Log(address sender, string message);
    event IndexedLog(address indexed sender, string message); // make searchable

    function fireEvents() public {
        emit Log(msg.sender, "Event trigger");
    }

}
