//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract ProductContract {
    struct ProductInfo {
        string BUYER_GCUID;
        string SELLER_GCUID;
        uint256 TAG_PRICE;
        string DESCRIPTION; // Manufactured car batteries for ev
        string VERIFIERS_GCUID;
        string CONFLICT_RESOLVERS_GCUID;
        // string ATTACHED_TRANSACTIONS_IDS;
    }

    ProductInfo[] public _productInfo;

    function setProductInfo(
        string memory _BUYER_GCUID,
        string memory _SELLER_GCUID,
        uint256 _TAG_PRICE,
        string memory _DESCRIPTION,
        string memory _VERIFIERS_GCUID,
        string memory _CONFLICT_RESOLVERS_GCUID
    ) public {
        _productInfo.push(
            ProductInfo(
                _BUYER_GCUID,
                _SELLER_GCUID,
                _TAG_PRICE,
                _DESCRIPTION,
                _VERIFIERS_GCUID,
                _CONFLICT_RESOLVERS_GCUID
            )
        );
    }

    function setProductInfo() public view returns (ProductInfo[] memory) {
        return _productInfo;
    }
}
