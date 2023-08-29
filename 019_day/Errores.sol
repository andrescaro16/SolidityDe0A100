// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint public num = 0;
    uint public balance = 10;

    function testRequire(uint _i) public pure {
        // Usando require para validar una condición
        require(_i > 10, "La entrada debe ser mayor que 10");
    }

    function testRevert(uint _i) public pure {
        // Usando revert para condiciones más complejas
        if (_i <= 10) {
            revert("La entrada debe ser mayor que 10");
        }
    }

    function testAssert() public view {
        // Usando assert para verificar una condición interna
        assert(num == 0);
    }

    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        //uint balance = address(this).balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance(balance, _withdrawAmount);
        }
    }
}