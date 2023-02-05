// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FallbackFunction {

    uint private callCount;

    constructor() {
        callCount = 0;
    }

    function getCallCount() public view returns(uint) {
        return callCount;
    }

    fallback() external {
        callCount += 1;
    }
}