pragma solidity 0.8.0;

import './Storage.sol';

contract Robot is Storage {

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function getNumOfRobots() public view returns(uint256) {
        return _uintStorage['Robots'];
    }

    function setNumOfRobots(uint256 toSet) public {
        _uintStorage['Robots'] = toSet;
    }

}