// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Busqueda {
    
    function findIndex(uint[] memory _array, uint _value) public pure returns (int) {
        for (uint i = 0; i < _array.length; i++) {
            if (_array[i] == _value) {
                return int(i); // Devuelve el índice si encuentra el valor
            }
        }
        return -1; // Devuelve -1 si el valor no se encuentra en el Array
    }

/*     function nativeFindIndex(uint[] memory _array, uint _value) public pure returns (int) {
        return int(_array.indexOf(_value)); // Devuelve el índice si encuentra el valor, o -1 si no se encuentra
    } */

}
