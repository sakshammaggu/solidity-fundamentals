// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract Counter {
    // smart contract code ...

    // which stores the value of a counter
    // increment counter
    // decrement counter

    // CRUD


    string public name;
    uint public count;

    // Constructor to initialize the contract's state variables
    // Use the 'memory' keyword for the _name parameter to indicate 
    // that it is a temporary variable stored in memory
    constructor (string memory _name, uint _initialCount) {
        // name="My Counter";
        // count=1;

        name=_name;
        count=_initialCount;
    }

    // function to increment the count
    function incrementCounter() public returns (uint newCount) {
        count++;
        return count;
    }

    // function to decrement the counter
    function decrementCounter() public returns (uint newCount) {
        count--;
        return count;
    }

    // function to get the counter
    function getCounter() public view returns (uint) {
        return count;
    }

    // function to get name
    function getName() public view returns (string memory currName) {
        return name;
    }

    // function to set name
    function setName(string memory _newName) public returns (string memory newName) {
        name=_newName;
        return name;
    }
}
