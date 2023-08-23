// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Arrays {
    uint[] public numbers; // Crea un Array dinámico de números enteros sin tamaño fijo
    address[] public addresses; // Crea un Array dinámico de direcciones sin tamaño fijo

    function insert(uint _num) public {
        numbers.push(_num); // Agrega el número 10 al final del Array 'numbers'
        addresses.push(msg.sender); // Agrega la dirección del remitente al final del Array 'addresses'
    }

    function remove() public {
        numbers.pop(); // Elimina el último elemento del Array 'numbers'
        addresses.pop(); // Elimina el último elemento del Array 'addresses'

        //delete numbers[0]; // Elimina el elemento en el índice 0 del Array 'numbers'
        //delete addresses[2]; // Elimina el elemento en el índice 2 del Array 'addresses'
    }
}