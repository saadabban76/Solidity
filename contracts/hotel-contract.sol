// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

contract HotelRoom {
    // Ether Payments
    // Modifiers
    // Visibility
    // Events
    // Enums

    // payable keyword : allows to store a contract address or an external account address that can receive Ether.
    address payable public owner;

    event Occupy(address _occupant, uint256 _value);

    enum Status {
        Vacant,
        Occupied
    }
    Status public currentStatus; // this stores the current enum which is being used in the contract.

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    // book modifier
    modifier roomAvailability() {
        require(msg.value >= 2 ether, "not enough ether.");
        _;
    }

    function book() public payable roomAvailability returns (bool, bytes memory) {
        // allows the users to pay the price to get the room from the hotel owner.
        // check price
        require(
            currentStatus == Status.Vacant,
            "The hotel room is already occupied ."
        );
        currentStatus = Status.Occupied;

        (bool send, bytes memory data) = owner.call{value: msg.value}("");
        require(send == true);

        emit Occupy(msg.sender, msg.value);
        return (send, data);
    }
}


// Ether Pay methods : 
// msg.transfer: A function that securely transfers a fixed amount of Ether to another contract or address, throwing an exception if the transfer fails (revert).
// msg.send: A function that sends a fixed amount of Ether to another contract or address, returning a boolean value (true or false) if the transfer is successful or not.
// msg.call: A low-level function that allows you to execute arbitrary code on another contract, returning the result of the execution. This function bypasses some security features of Solidity and is more vulnerable to re-entrancy attacks.
