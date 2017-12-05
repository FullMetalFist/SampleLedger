pragma solidity ^0.4.0;

contract SampleLedger {

    string fName;
    uint age;
    address owner;

    function SampleLedger() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    event User(
        string name,
        uint age
    );

    function setName(string _fName, uint _age) onlyOwner public {
        fName = _fName;
        age = _age;
        User(_fName, _age);
    }

    function getName() public constant returns (string, uint) {
        return (fName, age);
    }
}
