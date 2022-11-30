// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

address constant BATCH_ADDRESS = 0x0000000000000000000000000000000000000808;

Batch constant BATCH_CONTRACT = Batch(BATCH_ADDRESS);

interface Batch {
    function batchSome(
        address[] memory to,
        uint256[] memory value,
        bytes[] memory callData,
        uint64[] memory gasLimit
    ) external;

    function batchSomeUntilFailure(
        address[] memory to,
        uint256[] memory value,
        bytes[] memory callData,
        uint64[] memory gasLimit
    ) external;

    function batchAll(
        address[] memory to,
        uint256[] memory value,
        bytes[] memory callData,
        uint64[] memory gasLimit
    ) external;

    event SubcallSucceeded(uint256 index);
    event SubcallFailed(uint256 index);
}
