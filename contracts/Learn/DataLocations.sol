// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract LearnDataLocations {

    struct Container {
        string name;
        uint size;
    }

    mapping(address => Container) public containers;

    function writeBack() public {
        Container storage c = containers[msg.sender];
        c.name = "Main";
        c.size = 2048;
    }

    function readOnly() public {
        Container memory c = containers[msg.sender];
        c.size = 1024;
    }


    function createMemoryArray(uint memory _size) public returns(uint[] memory) {
        uint[] memory memArr = new uint[](_size);
        return memArr;
    }

    function referenceArray(uint[] calldata arr) public {
        _internal(arr);
    }

    function _internal(uint[] calldata _arr) private {
        uint x = _arr[0];
    }
    
}

