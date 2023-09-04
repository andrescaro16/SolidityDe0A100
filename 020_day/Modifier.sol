// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Token {
    address public owner;
    mapping(address => uint256) public balances;
    bool public locked;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier validAmount(uint256 amount) {
        require(amount > 0, "Amount must be greater than 0");
        _;
    }

    modifier noReentrancy() {
        require(!locked, "Reentrancy attack detected");
        locked = true;
        _;
        locked = false;
    }

    constructor() {
        owner = msg.sender;
    }

    function transfer(address to, uint256 amount) public onlyOwner validAmount(amount) noReentrancy {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function deposit() public payable noReentrancy {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public onlyOwner validAmount(amount) noReentrancy {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

}