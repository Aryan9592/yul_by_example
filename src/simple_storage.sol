// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// https://solidity-by-example.org/state-variables/
contract SimpleStorage {
    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
        assembly {
            sstore(0, _num)
        }
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint num_) {
        assembly {
            num_ := sload(0)
        }
    }
}