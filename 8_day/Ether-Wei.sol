// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EtherUnits {

    uint public oneWei = 1 wei;
    uint public oneEther = 1 ether;

    // 1 wei es igual a 1
    bool public isOneWei = 1 wei == 1;
    // 1 ether es igual a 10^18 wei
    bool public isOneEther = 1 ether == 1e18;

}