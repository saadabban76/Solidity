// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

// Interface : interfaces acts like a blueprint for communition between contracts by specifying function signatures(dataTypes) without implementions(declaration).

contract Counter {
    uint256 public count;

    function increment() external {
        count += 1;
    }

    function test() public pure returns (string memory) {
        return "working ? ";
    }
}

interface ICounter {
    // functions inside the interface can only have external visibility for the function.
    function count() external view returns (uint256);

    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counterAdrr) external {
        ICounter(_counterAdrr).increment();
    }

    function getCount(address _counterAdrr) external view returns (uint256) {
        return ICounter(_counterAdrr).count();
    }
}
