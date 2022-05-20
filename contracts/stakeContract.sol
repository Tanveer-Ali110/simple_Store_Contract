//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract StakeContract {
    struct stakeInfo {
        string USER_STACKING_ID;
        string STACKING_RECEIPT_ID;
        uint256 STACKED_GAIN;
        uint256 UNSTACKED_GAIN;
        int256 NET_STACKED_GAIN;
    }

    stakeInfo[] public _stakeInfo;
    event stake_data(uint256 _indexed, address indexed _sender);

    function setStakeInfo(
        string memory _USER_STACKING_ID,
        string memory _STACKING_RECEIPT_ID,
        uint256 _STACKED_GAIN,
        uint256 _UNSTACKED_GAIN,
        int256 _NET_STACKED_GAIN
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
        emit stake_data(_stakeInfo.length - 1, msg.sender);
    }

    function getStakeInfo() public view returns (stakeInfo[] memory) {
        return _stakeInfo;
    }
}
