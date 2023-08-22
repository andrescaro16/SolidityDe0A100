// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Inmutable {

    // convención de codificación para declarar constantes en mayúsculas
    address public immutable MI_DIRECCION;
    uint public immutable MI_ENTERO;

    constructor(uint _miEntero) {
        MI_DIRECCION = msg.sender;
        MI_ENTERO = _miEntero;
    }

}