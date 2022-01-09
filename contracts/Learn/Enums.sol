// SPDX-License-Identifier: MIT
pragma solidity >=0.8;

contract LearnEnums {
    enum Status {
        NONE,
        OK,
        IN_PROGRESS
    }

    Status public status;

    function get() public view returns(Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function reset() public {
        delete status;
    }

    function init() public {
        status = Status.IN_PROGRESS;
    }
}