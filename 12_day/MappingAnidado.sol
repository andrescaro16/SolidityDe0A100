// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract NestedMappingExample {
    mapping(address => mapping(uint => bool)) private nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}