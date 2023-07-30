// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlersDemo {
    uint256 public value;

    event ValueSet(uint256 newValue);

    function setValue(uint256 newValue) public {
        // Using require() to check conditions and handle errors
        require(newValue > 0, "Value must be greater than 0");

        // Using assert() to check for internal errors
        assert(newValue <= 100);

        value = newValue;
        emit ValueSet(newValue);
    }

    function triggerRevert() public pure {
        // Using revert() to explicitly revert a transaction with an error message
        revert("This transaction intentionally reverted");
    }
}
