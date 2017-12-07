pragma solidity ^0.4.18;

contract Samples {

    struct User {
        uint age;
        string firstName;
        string lastName;
    }

    mapping (address => User) users;

    address[] public userAccounts;

    function setUser(address _address, uint _age, string _firstName, string _lastName) public {
        var user = users[_address];

        user.age = _age;
        user.firstName = _firstName;
        user.lastName = _lastName;

        userAccounts.push(_address) -1;
    }

    function getUsers() view public returns(address[]) {
        return userAccounts;
    }

    function getUser(address _address) view public returns (uint, string, string) {
        return (users[_address].age, users[_address].firstName, users[_address].lastName);
    }

    function countUsers() view public returns (uint) {
        return userAccounts.length;
    }
}
