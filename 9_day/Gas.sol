// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract GasFees {

    uint public totalSupply = 1000;

    function transfer(uint _value) external payable {

        // Lógica de transferencia
        // Cálculo de las tarifas de gas
        uint gasUsed = gasleft();

        uint gasPrice = tx.gasprice;

        uint gasFees = gasUsed * gasPrice;

        // Restar las tarifas de gas del valor transferido
        uint transferValue = _value - gasFees;

        // Realizar la transferencia con el valor actualizado
        totalSupply -= transferValue;

        // Reembolsar el gas restante
        uint remainingGas = gasleft();

        payable(msg.sender).transfer(remainingGas * gasPrice);
    }

}