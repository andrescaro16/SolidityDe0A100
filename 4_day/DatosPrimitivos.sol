// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Primitives {
    // Boolean: Making Decisions
    bool public boo = true;

    // Unsigned Integers: From 0 to Infinity
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint public u = 123;

    // Signed Integers: Positive and Negative Numbers
    int8 public i8 = -1;
    int256 public i256 = 456;
    int public i = -123;

    // Address: Identifying Participants
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Byte: Sequences of Data
    bytes1 public b1 = 0xAA;

    // Default Values: Handling Unassigned Variables
    bool public defaultBoo;
    uint public defaultUint;
    int public defaultInt;
    address public defaultAddr;

    // Constructor to initialize default values
    constructor() {
        defaultBoo = false;
        defaultUint = 0;
        defaultInt = 0;
        defaultAddr = address(0);
    }
}