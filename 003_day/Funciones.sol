// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MiContrato {
    uint public miNumero;
    
    function setNumero(uint _numero) public {
        miNumero = _numero;
    }
}