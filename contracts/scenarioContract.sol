//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ScenarioContract {
    struct scenarioFundsInfo {
        string USER_GCUID;
        string SCENARIO_FUNDS_ID;
        string SCENARIO_FUND_RECEIPT_ID;
        uint256 BURNT;
        uint256 ADDED;
    }

    scenarioFundsInfo[] public _scenarioFundsInfo;

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