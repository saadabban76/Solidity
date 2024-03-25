// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// Base Contract A
contract A {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }
}

// Base Contract B
contract B {
    uint public n;

    constructor(uint _n) {
        n = _n;
    }
}

// there are 2 ways to inialize parent contract with parameters.

// 1. pass the parameters here in inheritence list.
contract C is A("this is message"), B(76) {
}

// 2. pass the parameters inside the contructor.
// it is similar to function modifier

contract D is A,B {
    constructor(string memory _message, uint _n) A(_message) B(_n) {

    }
}

// Note : parent constructors are always called in the order of inheritence
// regarless of the order of parent contract listed in the construct of the child contract.
