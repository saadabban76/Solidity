// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// DelegateCall is a function in solidity that allows you to you execute the functions of another contract(B) with its storage in contract(A). 

/*
    Delegate call's example : 
    Contract : A calls B -> sends 50wei
    calls : A --> B --> C
    flow : {
        msg.sender = B;
        msg.value = 50;
        execute code on C's state variables.
        use ETH in C
    }
*/

// Note : if you are playing around the statevaribles between 2 contracts make sure to have the same state variables in both the contracts.

contract TestDelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable {
        num = _num * 2;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
        //  ! 2 ways of writing the delegate call :
        // _test.delegatecall(abi.encodeWithSignature(("setVars(uint256"), _num));
       (bool success, ) = _test.delegatecall(abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num));
        require(success, "delegateCall Failed !"); // this is the recommended one.
    }
}
