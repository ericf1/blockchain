// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // version of solidity (^ means 0.8.8 or above)
//notice the compiler versions (need to be compatiable in versions)

import "./simplestorage.sol";

contract StorageFactory {
    // This array holds holds contract objects that contain the Address AND the ABI
    SimpleStorage[] public simpleStorageArr;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        //To store contracts we need: Address & ABI (Application Binary Interface)
        simpleStorageArr[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageArr[_simpleStorageIndex].retrieve();
    }
}
