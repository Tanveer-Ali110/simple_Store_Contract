//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract UserContract {
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

    UserInfo[] public _userInfo;
    event user_data(uint256 _indexed, address indexed _sender);

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
        emit user_data(_productInfo.length - 1, msg.sender);
    }

    function getUserInfo() public view returns (UserInfo[] memory) {
        return _userInfo;
    }
}
