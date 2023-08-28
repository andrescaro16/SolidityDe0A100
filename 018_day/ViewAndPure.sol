// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ViewAndPure {
    uint public x = 1;

    // Función "view" para acceder y sumar un valor
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Función "pure" para realizar una operación matemática
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}