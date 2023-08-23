// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Funcion {
    uint public miNumero;


    // Esta es una función "view" porque lee datos (miNumero) de la blockchain
    function obtenerNumero() public view returns (uint) {
        return miNumero; 
    }


    // Esta es una función "pure" porque no lee nada de la blockchain
    function sumarNumeros(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}