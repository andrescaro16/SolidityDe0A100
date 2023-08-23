// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UserBalance {
    mapping(address => uint256) balances;

    function setBalance(uint256 amount) public {
        balances[msg.sender] = amount;
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}