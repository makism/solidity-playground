// SPDX-License-Identifier: MIT
pragma solidity >=0.8;

contract LearnModifiers {
    bool public statePaused;
    uint public counter;

    modifier whenNotPaused() {
        require(!statePaused, "paused");
        _;
    }

    modifier cap(uint _val) {
        require(_val <= 10, "Value exceeds cap.");
        _;
    }

    function value() public view returns(uint) {
        require(statePaused, "not paused");
        return counter;
    }

    function setPaused(bool _state) public {
        statePaused = _state;
    }

    function increase(uint _val) public whenNotPaused cap(_val) {
        counter += _val;
    }

    function decrease() public whenNotPaused {
        counter -= 1;
    }


    modifier sandwich() {
        counter = 1024;
        _;
        counter += 1;
    }
    function prepare() public sandwich {
        counter -= 1;
    }
}
