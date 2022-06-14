// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // version of solidity (^ means 0.8.8 or above)
// can be written as ">=0.8.7 <0.9.0" (0.8.10 is valid but 0.9.1 is invalid)

// EVM, Ethereum Virtual Machine
// Avalanche, Fantom, Polygon

contract SimpleStorage {
    //boolean, unit, int, address, bytes
    //unit8 to unit256 OR int8 to int256 OR bytes1 to bytes32 -> types that restricts the limit of the bytes
    uint256 public favoriteNumber;
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        //viewFunction(); <- THIS costs gas though :(
    }
    //view function does not use gas
    //pure function does not use gas
    //BECAUSE these don't modify the states, ONLY reading the blockchain
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    //People public person = People({favoriteNumber: 2, Name: "Eric"});
    
    //struct
    struct People {
        uint256 favoriteNumber; // index 0
        string Name; // index 1
    }
    //dictionary
    mapping(string => uint256) public nameToFavorite;

    People[] public people;
    //Memory keyword (inside of EVM)
    //calldata, memory, storage
    //calldata is temporary and immutable
    //memory is temporary and mutable
    //storage is global (the favoriteNumber)

    //function that adds a person to the people array
    //uint256 does not need to be specfied as memory because we know it is temporary
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavorite[_name] = _favoriteNumber;
    }
    
}

//Address of Contract: 0xd9145CCE52D386f254917e481eB44e9943F39138
//Contract === Transaction