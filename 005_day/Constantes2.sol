// SPDX-License-Identifier: MI
pragma solidity ^0.8.17;


contract MathOperations {
    uint256 public constant NUMBER1 = 10; // Primera constante con valor 10
    uint256 public constant NUMBER2 = 5;  // Segunda constante con valor 5

    // Función para obtener el resultado de la suma de NUMBER1 y NUMBER2
    function sum() public pure returns (uint256) {
        return NUMBER1 + NUMBER2;
    }

    // Función para obtener el resultado de la resta de NUMBER1 y NUMBER2
    function subtract() public pure returns (uint256) {
        return NUMBER1 - NUMBER2;
    }
}