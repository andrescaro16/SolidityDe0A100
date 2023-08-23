// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract EjemploEstructurasControl {

    // Ejemplo básico de sentencia if-else
    function ifElse(uint256 x) external pure returns (uint256) {
        if (x < 10) {
            return 1;
        } else if (x < 20) {
            return 2;
        }
        return 3;
    }

    // Uso del operador ternario
    function ternary(uint256 x) external pure returns (uint256) {
        return x > 10 ? 1 : 2; // este es un ejemplo de operador ternario
    }

    // Bucles for y while
    function bucles() external pure {
        for (uint256 i = 0; i < 10; i++) {
            // código
            if (i == 3) {
                continue; // esto omite una iteración del bucle
            }
            // más código
            if (i == 5) {
                break; // esto finaliza el bucle en "i == 5"
            }
        }
        uint256 A = 0;
        while (A < 10) {
            // código
            A++;
        }
    }

    function sumar(uint256 b) external pure returns (uint256) {
        uint256 y;
        for (b = 0; b <= b; b++) {
            y += b;
        }
        return y;
    }
}