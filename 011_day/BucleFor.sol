// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BucleFor {

    function bucle() public {
        // Bucle for
        for (uint i = 0; i < 10; i++) {
            // Bloque de código ejecutado en cada iteración
            if (i == 3) {
                continue; // Salta a la siguiente iteración
            }
            if (i == 5) {
                break; // Termina el bucle prematuramente
            }
            // Resto del código dentro del bucle
        }
    }
}