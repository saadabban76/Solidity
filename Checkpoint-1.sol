// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract EventTicket {
    uint256 public numberOfTickets;
    uint256 totalAmount;
    uint256 ticketPrice;
    uint256 startAt;
    uint256 endAt;
    uint256 timeRange;
    string message = "Buy your first Event Ticket";

    constructor(uint256 _ticketPrice) {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        // here converting the seconds into days into timeRange.
        timeRange = (endAt - startAt) / 60 / 60 / 24;
    }

    function buyTicket(uint256 _value) public returns (uint256 ticketId) {
        // this is incremented whenever any user buys the ticket.
        numberOfTickets++;
        totalAmount += _value;
        ticketId = numberOfTickets;
    }

    function getAmount() public view returns (uint256) {
        return totalAmount;
    }
}
