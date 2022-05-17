//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract SimpleStore {
    struct UserInfo {
        string USER_GCUID;
        string First_Name;
        string Middle_Name;
        string Last_Name;
        string USER_ADDRESS;
        string USER_TYPE;
        string USER_WALLET_ID;
        string USER_STACKING_ID;
    }

    struct walletInfo {
        string USER_WALLET_ID;
        string WALLET_RECEIPT_ID;
        uint256 UPGAIN;
        uint256 DWONGAIN;
        uint256 NETGAIN;
    }

    struct stakeInfo {
        string USER_STACKING_ID;
        string STACKING_RECEIPT_ID;
        uint256 STACKED_GAIN;
        uint256 UNSTACKED_GAIN;
        uint256 NET_STACKED_GAIN;
    }

    struct scenarioFundsInfo {
        string USER_GCUID;
        string SCENARIO_FUNDS_ID;
        string SCENARIO_FUND_RECEIPT_ID;
        uint256 BURNT;
        uint256 ADDED;
    }

    UserInfo[] public _userInfo;

    walletInfo[] public _walletInfo;

    stakeInfo[] public _stakeInfo;

    scenarioFundsInfo[] public _scenarioFundsInfo;

    function setUserInfo(
        string memory _USER_GCUID,
        string memory _First_Name,
        string memory _Middle_Name,
        string memory _Last_Name,
        string memory _USER_ADDRESS,
        string memory _USER_TYPE,
        string memory _USER_WALLET_ID,
        string memory _USER_STACKING_ID
    ) public {
        _userInfo.push(
            UserInfo(
                _USER_GCUID,
                _First_Name,
                _Middle_Name,
                _Last_Name,
                _USER_ADDRESS,
                _USER_TYPE,
                _USER_WALLET_ID,
                _USER_STACKING_ID
            )
        );
    }

    function getUserInfo() public view returns (UserInfo[] memory) {
        return _userInfo;
    }

    function setWalletInfo(
        string memory _USER_WALLET_ID,
        string memory _WALLET_RECEIPT_ID,
        uint256 _UPGAIN,
        uint256 _DWONGAIN,
        uint256 _NETGAIN
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

    function setStakeInfo(
        string memory _USER_STACKING_ID,
        string memory _STACKING_RECEIPT_ID,
        uint256 _STACKED_GAIN,
        uint256 _UNSTACKED_GAIN,
        uint256 _NET_STACKED_GAIN
    ) public {
        _stakeInfo.push(
            stakeInfo(
                _USER_STACKING_ID,
                _STACKING_RECEIPT_ID,
                _STACKED_GAIN,
                _UNSTACKED_GAIN,
                _NET_STACKED_GAIN
            )
        );
    }

    function getStakeInfo() public view returns (stakeInfo[] memory) {
        return _stakeInfo;
    }

    function setFundsInfo(
        string memory _USER_GCUID,
        string memory _SCENARIO_FUNDS_ID,
        string memory _SCENARIO_FUND_RECEIPT_ID,
        uint256 _BURNT,
        uint256 _ADDED
    ) public {
        _scenarioFundsInfo.push(
            scenarioFundsInfo(
                _USER_GCUID,
                _SCENARIO_FUNDS_ID,
                _SCENARIO_FUND_RECEIPT_ID,
                _BURNT,
                _ADDED
            )
        );
    }

    function getFundsInfo() public view returns (scenarioFundsInfo[] memory) {
        return _scenarioFundsInfo;
    }
}
