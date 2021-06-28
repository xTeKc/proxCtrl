pragma solidity 0.8.0;

import './Storage.sol';

contract Robot is Storage {

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    
}