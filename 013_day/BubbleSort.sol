// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ordenamiento {
    
    function bubbleSort(uint[] memory _array) public pure {
        uint n = _array.length;
        for (uint i = 0; i < n - 1; i++) {
            for (uint j = 0; j < n - i - 1; j++) {
                if (_array[j] > _array[j + 1]) {
                    // Intercambiar elementos
                    uint temp = _array[j];
                    _array[j] = _array[j + 1];
                    _array[j + 1] = temp;
                }
            }
        }
    }    

}
