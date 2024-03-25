// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

contract Payable {
    // Payable contructor can receive ether
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // function to deposit ether into this contract
    // on calling this function the balance of this contract will be automatically updated.
    function deposit() public payable {}

    //    the functin will throw an error since this functin is not payable.

    // function to withdraw all ether from this contract.
    function withdraw() public {
        // this will return the balance of the contract.
        uint256 amount = address(this).balance;

        // send all ether in contract to owner.
        // owner can receive ether since the adddress of owner is payable.
        (bool success, ) = owner.call{value: amount}("");
        require(success, "failed to send ether !");
    }

    // function to transfer ether from this contract to address given in input.
    function transfer(address payable _to, uint _amount) public payable {
        _to = payable(_to);
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "failed to send ether to the custom address !");
    }
}
