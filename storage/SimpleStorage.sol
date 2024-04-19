// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
contract SimpleStorage {
    mapping(string => uint256) public nametofavoriteNumber;
    mapping(string => address) public nameToAddress;

    function addPerson(
        uint256 _favoriteNumber,
        string memory _name,
        address _address
    ) public {
        nametofavoriteNumber[_name] = _favoriteNumber;
        nameToAddress[_name] = _address;
    }
}
