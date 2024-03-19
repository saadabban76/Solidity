// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// Inheritence
// Factories
// Interaction

contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "not an owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}

// 1. Inheretence Example
contract ParentContract is Ownable {
    string secret;
    address secretVaultArr;

    constructor(string memory _secret) {
        SecretVault _secretVault = new SecretVault(_secret); // creating an instance of SecretVault contract
        secretVaultArr = address(_secretVault); // storing the adderss of the secretvault contract to access its functions.
        super; // super keyword allows you run the constructor of the children's constructor inside of the parent constructor at the specific place.
    }

    function getSecret() public view onlyOwner returns (string memory) {
        return SecretVault(secretVaultArr).getSecret();
    }
}
