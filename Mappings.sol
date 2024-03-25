// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// It is a key-value store that allows you to associate values with unique keys.

contract Mapping {
    // mapping from address to uint(balance)
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;
    // Nested Mapping : they are maps inside the maps
    mapping(address => mapping(uint256 => Book)) public myBooks;
    /*
        Example in Json: 
        Books: {
            0x5B....68DV: {
                1: {
                 "title" : "become rich af",
                 "author" : "unknown",
                 "price": 30029,
                }
                2: {
                 "title" : "become poor af",
                 "author" : "known",
                 "price": 39,
                }
            }
    */

    struct Book {
        string title;
        string author;
        uint256 price;
    }

    constructor() {
        names[1] = "john";
        names[2] = "rohn";
        names[3] = "mohn";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author,
        uint256 _price
    ) public {
        Book memory newBook = Book(_title, _author, _price);
        books[_id] = newBook;
    }

    function removeBook(uint256 _id) public {
        delete books[_id];
    }

    // nested mapping down the line :
    function addBookINNested(
        uint256 _id,
        string memory _title,
        string memory _author,
        uint256 _price
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author, _price);
    }

    function removeBookINNested(uint256 _id) public {
        delete myBooks[msg.sender][_id];
    }
}
