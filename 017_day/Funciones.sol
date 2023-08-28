//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* 
FUNCIONES GLOBALES MÁS COMUNES:
block.blockhash(blockNumber):  Devuelve el hash de un bloque dado.
block.coinbase:                Devuelve la dirección del minero que está procesando el bloque actual.
block.difficulty:              Devuelve la dificultad del bloque actual.
block.gaslimit:                Devuelve el límite de gas del bloque actual.
block.number:                  Devuelve el número del bloque actual.
block.timestamp:               Devuelve el sello de tiempo (timestamp) del bloque actual en segundos.
msg.data:                      Datos enviados en la transacción.
msg.gas:                       Devuelve la cantidad de gas restante.
msg.sender:                    Devuelve el remitente de la llamada actual.
msg.sig:                       Devuelve los primeros cuatro bytes de los datos enviados en la transacción.
msg.value:                     Devuelve la cantidad de Wei enviados con la llamada.
tx.gasprice:                   Devuelve el precio del gas de la transacción.
tx.origin:                     Devuelve el emisor original de la transacción.
*/


contract FuncionesEjemplo {
   
    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    function assigned() public pure returns (uint x, bool b, uint y) {
        x = 1;
        b = true;
        y = 2;
    }

    function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();
        (uint x, , uint y) = (4, 5, 6);
        return (i, b, j, x, y);
    }

}