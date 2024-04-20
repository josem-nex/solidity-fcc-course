// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./StorageFactory.sol";
// virtual and override like other languages
contract ExtraFactory is StorageFactory {
    function sfChangeFavoriteNumber(
        uint256 _index,
        string memory _name,
        uint256 _favoriteNumber
    ) public {
        SimpleStorage(address(simpleStorageArray[_index])).changeFavoriteNumber(
            _name,
            _favoriteNumber
        );
    }
    function sfChangeAddress(
        uint256 _index,
        string memory _name,
        address _address
    ) public {
        SimpleStorage(address(simpleStorageArray[_index])).changeAddress(
            _name,
            _address
        );
    }
}
