// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SimpleStorage {
    
    uint256 public myfavNumber;

    struct Person {
        uint256 favNumber;
        string name;
    }

    Person[] public myFriends;

    mapping (string => uint256) public nameToFavNumber;

    function store(uint256 _favNumber) public {
        myfavNumber = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return myfavNumber;
    }

    function addFriend(string memory _name, uint256 _favNumber) public {
        myFriends.push(Person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}