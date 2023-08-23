// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MiModificador {
    address public propietario;
    uint public miNumero;

    constructor() {
        propietario = msg.sender;
        miNumero = 0;
    }

    modifier soloPropietario {
        require(msg.sender == propietario, "Solo el propietario del contrato puede llamar a esta funci\xC3\xB3n");
        _; // Esto indica dónde se colocará el cuerpo de la función
    }

    modifier numeroValido {
        require(miNumero > 0, "El n\xC3\xBAmero debe ser mayor que cero");
        _;
    }


    function setNumero(uint _numero) public soloPropietario numeroValido {
        miNumero = _numero;
    }
}