// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Clase {

    struct Student {
        address studentAddress;
        uint[] grades;
    }

    function getAverage(uint[] memory _grades) public pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < _grades.length; i++) {
            total += _grades[i];
        }
        return total / _grades.length;
    }

}
