// EVM, Ethereum Virtual Machine
// Ethereum, Polygon, Arbitrum, Optimism, Zksync

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // this is the solidity version
// pragma solidity ^0.8.18; 
// pragma solidity >=0.8.18 <0.9.0; 

contract SimpleStorage {
    // ==== Basic Types: boolean, uint, int, address, bytes ====
    // bool hasFavoriteNumber = true;
    // string favoriteNumberInText = "88";
    // int256 favoriteInt = -88;
    // address myAddress = 0xCAD936426107A8f0eEed3a2b12735b847Bb8bD01;
    // bytes32 favoriteBytes32 = "cat";

    // ==== Storage Variable ====
    uint256 myFavoriteNumber; //default 0

    // ==== Struct ====
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic Array
    Person[] public listOfPeople; // [5] static

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public mariah = Person(16, "Mariah");
    // Person public jon = Person(12, "Jon");

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(uint256 _favoriteNumber, string memory _name) public {        
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}