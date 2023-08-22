// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EjemploInmutable {

    uint public immutable MI_CONSTANTE;

    constructor(uint _valor) {
        MI_CONSTANTE = _valor;
    }

    function actualizarConstante(uint _nuevoValor) external {
        // Esto resultará en un error de compilación porque no se puede modificar un inmutable
        MI_CONSTANTE = _nuevoValor;
    }
}