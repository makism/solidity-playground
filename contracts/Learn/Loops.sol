// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract LearnLoops {

    function basicWhile() public pure {
        uint j=0;
        while (j < 10) {
            // do something here...
            j++;
        }
    }

    function basicLoop() public pure {
        for (uint i=0; i<10; i++) {
            // do something here...
        }
    }


    function lookBreakContinue() public pure {
        for (uint i=0; i<10; i++) {
            if (i == 3) {
                continue;
            } else {
                break;
            }
        }
    }

    function exampleDoSum(uint _n) public pure returns(uint) {
        uint s;
        for (uint i=1; i<=_n; i++) {
            s += i;
        }
        return s;
    }
}
