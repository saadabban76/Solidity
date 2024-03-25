// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

/*
    Graph of Inheritence
          A
        /  \
        B   C
       / \  /
      F  D  E
*/

// Virtual Keyword : Function that is going to be overriden by a child contract must be declared as Virtual.
// Override Keyword : Function that is going to override a parent function must us the keyword Override.

contract A {
    function print() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    // overide A.print
    function print() public pure virtual override returns(string memory) {
        return "B";
    }
}

contract C is A {
    // Override A.print()
    function print() public pure virtual override returns(string memory) {
        return "C";
    }
}

contract D is B,C {
    // D.print() returns "C"
    // Since C is the right most parent contract with function print
    function print() public pure override(B,C) returns(string memory) {
        return super.print();
    }
}

contract E is C,B {
    // E.Print() returns "B"
    // since B is the right most parent contract with function print()
    function print() public pure virtual override(C,B) returns(string memory)  {
        return super.print();
    }
}

contract F is A,B {
    function print() public pure override(A,B) returns (string memory) {
        return super.print();
    }
}
