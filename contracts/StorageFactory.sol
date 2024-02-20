// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpStorage;

    function createSimpleStorageContract() public {
        SimpleStorage newContract = new SimpleStorage();
        listOfSimpStorage.push(newContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageIndex) public {
        listOfSimpStorage[_simpleStorageIndex].store(_newSimpleStorageIndex);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpStorage[_simpleStorageIndex].retrieve();
    }
}