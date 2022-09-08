// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

// The Validator Lock
contract Vock {
    mapping (address => bool) public vocked;

    event Stop(address indexed usr);
    event Start(address indexed usr);

    function stop() external {
        vocked[msg.sender] = true;
        emit Stop(msg.sender);
    }

    function start() external {
        vocked[msg.sender] = false;
        emit Start(msg.sender);
    }
}
