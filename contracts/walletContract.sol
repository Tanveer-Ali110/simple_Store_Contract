//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract WalletContract {
    struct walletInfo {
        string USER_WALLET_ID;
        string WALLET_RECEIPT_ID;
        uint256 UPGAIN;
        uint256 DWONGAIN;
        int256 NETGAIN;
    }

    walletInfo[] public _walletInfo;
    event wallet_data(uint256 _indexed, address indexed _sender);

    function setWalletInfo(
        string memory _USER_WALLET_ID,
        string memory _WALLET_RECEIPT_ID,
        uint256 _UPGAIN,
        uint256 _DWONGAIN,
        int256 _NETGAIN
    ) public {
        _walletInfo.push(
            walletInfo(
                _USER_WALLET_ID,
                _WALLET_RECEIPT_ID,
                _UPGAIN,
                _DWONGAIN,
                _NETGAIN
            )
        );
        emit wallet_data(_productInfo.length - 1, msg.sender);
    }

    function getWalletInfo() public view returns (walletInfo[] memory) {
        return _walletInfo;
    }
}
