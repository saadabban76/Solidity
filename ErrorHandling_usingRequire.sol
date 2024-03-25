// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

// Error Handling/require statement

/* 
If an error occurs in a Solidity contract and the require statement is used to handle it, the gas fees for the transaction will be reverted back to the user's wallet. This is because the require statement works by immediately stopping the execution of the contract and reverting any state changes made during the transaction 
if the condition specified in the statement is not met.

*/

contract Require{
    uint public storedData;

  function set(uint x) public {
        require(x > 0, "Value must be greater than zero.");
        storedData = x;
    }

    function odd(uint256 _input) public pure returns(bool) {
        require(_input % 2 != 0);
        return true;
    }
}
