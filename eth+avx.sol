// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract NumberAdder {
    function addNumbers(uint256 a, uint256 b) external pure returns (uint256) {
        // Require statement: Verifies if the inputs meet certain conditions
        require(a > 0, "Input 'a' must be greater than zero");
        require(b > 0, "Input 'b' must be greater than zero");
        
        // Addition operation
        uint256 result = a + b;
        
        // Assert statement: Verifies a condition that must always be true, otherwise throws an error
        assert(result >= a && result >= b);
        
        // Revert statement: Rolls back the transaction and reverts any changes made
        if (result < a || result < b) {
            revert("Addition overflow occurred");
        }
        
        return result;
    }
}
