//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TokenExchange {
   address public tokenContract;

    constructor(address _tokenContract) {
        tokenContract = _tokenContract;
    }

    function buyTokens(uint256 amount) public payable {
        (bool success, ) = tokenContract.call{value: msg.value}(abi.encodeWithSignature("mint(address,uint256)", msg.sender, amount));
        require(success, "Token purchase failed");
    }
}