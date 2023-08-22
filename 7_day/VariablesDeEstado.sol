/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {

    // Variable de estado para almacenar un número
    uint public num;

    // Es necesario enviar una transacción para escribir en una variable de estado.
    function set(uint _num) public {
        num = _num;
    }

    // Se puede leer desde una variable de estado sin enviar una transacción.
    function get() public view returns (uint) {
        return num;
    }

}