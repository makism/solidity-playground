// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract LearnErrors {

    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
    }

    function testRevert(uint _i) public pure {
        if (_i >= 10) {
            revert("i > 10");
        }
    }

    uint public someVar = 123;
    function testAssert() public view {
        assert(someVar == 123);
    }

    error ErrorHandler(address caller, uint i);
    function testCustomError(uint _i) public view {
        if (_i > 10) {
            revert ErrorHandler(msg.sender, _i);
        }
    }

}