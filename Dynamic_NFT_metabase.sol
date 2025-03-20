// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicNFT {
    string private baseURI1 = "ipfs://metadata1.json";
    string private baseURI2 = "ipfs://metadata2.json";
    
    function getMetadata() public view returns (string memory) {
        if (block.timestamp % 2 == 0) {
            return baseURI1;
        } else {
            return baseURI2;
        }
    }
}
