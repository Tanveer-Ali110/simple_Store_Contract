//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ProductContract {
    struct ProductInfo {
        string BUYER_GCUID;
        string SELLER_GCUID;
        uint256 TAG_PRICE;
        string DESCRIPTION; // Manufactured car batteries for ev
        string VERIFIERS_GCUID;
        string CONFLICT_RESOLVERS_GCUID;
        string[] ATTACHED_TRANSACTIONS_IDS;
    }

    ProductInfo[] public _productInfo;
    event Product_data(uint256 _indexed, address indexed _sender);

    function setProductInfo(
        string memory _BUYER_GCUID,
        string memory _SELLER_GCUID,
        uint256 _TAG_PRICE,
        string memory _DESCRIPTION,
        string memory _VERIFIERS_GCUID,
        string memory _CONFLICT_RESOLVERS_GCUID,
        string[] memory _ATTACHED_TRANSACTIONS_IDS
    ) public {
        ProductInfo memory data = ProductInfo(
            _BUYER_GCUID,
            _SELLER_GCUID,
            _TAG_PRICE,
            _DESCRIPTION,
            _VERIFIERS_GCUID,
            _CONFLICT_RESOLVERS_GCUID,
            _ATTACHED_TRANSACTIONS_IDS
        );
        _productInfo.push(data);
        emit Product_data(_productInfo.length - 1, msg.sender);
    }

    function getProductInfo() public view returns (ProductInfo[] memory) {
        return _productInfo;
    }
}
