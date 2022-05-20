pragma solidity ^0.5.13;

contract StartStopUpdate{
    address owner;
    bool paused;

    constructor() public{
        owner=msg.sender;
    }

    function sendMoney() public payable{

    }
    function setPaused(bool _paused) public{
        require(msg.sender == owner ,"You are not an owner");
        paused =_paused;
    }

    function withdrawAllMoney(address payable _to) public{
        require(msg.sender == owner ,"You are not an owner");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract( address payable _to) public{
        require(msg.sender == owner ,"You are not an owner");
        selfdestruct(_to);
    }
}

