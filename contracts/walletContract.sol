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
    }

    function getWalletInfo() public view returns (walletInfo[] memory) {
        return _walletInfo;
    }
}
