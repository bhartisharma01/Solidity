pragma solidity ^0.5.13;

contract owned{
    address owner;
    constructor () public{
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "you aren't an owner");
        _;
    }
}