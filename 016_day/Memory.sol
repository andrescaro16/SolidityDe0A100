//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Calculator {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b;
        return result;
    }
}