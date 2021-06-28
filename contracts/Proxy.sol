pragma solidity 0.8.0;

import './Storage.sol';

contract Proxy is Storage {

    address currentAddress;

    constructor(address _currentAddress) public {
        currentAddress = _currentAddress;
    }    

    function upgrade(address _newAddress) public {
        currentAddress = newAddress;
    }    

}