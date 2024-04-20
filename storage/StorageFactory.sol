// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    function sfAddPerson(
        uint256 _index,
        string memory _name,
        uint256 _favoriteNumber,
        address _address
    ) public {
        SimpleStorage(address(simpleStorageArray[_index])).addPerson(
            _name,
            _favoriteNumber,
            _address
        );
    }
    function sfRetrieveFavoriteNumber(
        uint256 _index,
        string memory _name
    ) public view returns (uint256) {
        return
            SimpleStorage(address(simpleStorageArray[_index]))
                .retrieveFavoriteNumber(_name);
    }
    function sfRetrieveAddress(
        uint256 _index,
        string memory _name
    ) public view returns (address) {
        return
            SimpleStorage(address(simpleStorageArray[_index])).retrieveAddress(
                _name
            );
    }
}
