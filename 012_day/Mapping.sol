// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    mapping(address => uint) private myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

    function set(address _addr, uint _value) public {
        myMap[_addr] = _value;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}