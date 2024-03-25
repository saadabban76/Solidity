// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

contract Token {
    string public name = "First Token";
    string public symbol = "FTT";
    uint public totalSupply = 100000;

    event Transfer(address indexed _from, address indexed _to, uint _value);

    address public owner;

    mapping(address  => uint) balances;
    
    constructor() {
        owner = msg.sender;
        balances[owner] = totalSupply;
    }

    function transfer(address _to, uint _value) public returns (bool success) {
        require(balances[msg.sender] >= _value, "not enough tokens !");
        require(balances[_to] + _value > balances[_to]);
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function balanceOf(address _account) public view returns(uint) {
        return balances[_account];
    }
  
}