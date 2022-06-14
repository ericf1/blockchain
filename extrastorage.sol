// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./simplestorage.sol";

//ExtraStorage extends SimpleStorage
contract ExtraStorage is SimpleStorage {
    //override
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
