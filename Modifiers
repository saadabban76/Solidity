// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// Modifiers : 
// modifiers are used to modify the behavior of functions.

// they are the code that runs before and after the function call
// generally used for this : Restrict access, Validate inputs, Guard against re-entracy hack.

contract Modifiers{
     address public owner;
     bool public haveAccess;
     bool locked;

     constructor() {
        owner = msg.sender;
     }

     modifier onlyOwner() {
        require(msg.sender == owner, "Restricted to normal users.");
        _; // this _ notation means when the require returns the true, the execuation is forwarded leading to the function execution.
        // just like next() thingy in nodejs backend.
     }

    modifier valdateAddress(address _addr) {
        require(_addr!= address(0), "not valid address");
        _;
    }

    // this ensures that only the owner of this contract have the authority to change the owner address.
    function changeOwner(address _newOwner) public onlyOwner valdateAddress (_newOwner) {
        owner = _newOwner;
    }
}
