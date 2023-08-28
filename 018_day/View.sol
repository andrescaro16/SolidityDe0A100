//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TokenExchange {
    uint256 public x = 10;

    // Función de vista (Lee información del contrato pero no lo modifica)
    function getX() public view returns (uint256) {
        return x;
    }
}