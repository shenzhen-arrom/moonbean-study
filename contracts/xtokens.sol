pragma solidity ^0.8.9;

interface Xtokens {
    struct Multilocation {
        uint8 parents;
        bytes[] interior;
    }

    struct MultiAsset {
        Multilocation location;
        uint256 amount;
    }

    struct Currency {
        address currency_address;
        uint256 amount;
    }

    function transfer(
        address currency_address,
        uint256 amount,
        Multilocation memory destination,
        uint64 weight
    ) external;

    function transfer_with_fee(
        address currency_address,
        uint256 amount,
        uint256 fee,
        Multilocation memory destination,
        uint64 weight
    ) external;

    function transfer_multiasset(
        Multilocation memory asset,
        uint256 amount,
        Multilocation memory destination,
        uint64 weight
    ) external;

    function transfer_multiasset_with_fee(
        Multilocation memory asset,
        uint256 amount,
        uint256 fee,
        Multilocation memory destination,
        uint64 weight
    ) external;

    function transfer_multi_currencies(
        Currency[] memory currencies,
        uint32 fee_item,
        Multilocation memory destination,
        uint64 weight
    ) external;

    function transfer_multi_assets(
        MultiAsset[] memory assets,
        uint32 fee_item,
        Multilocation memory destination,
        uint64 weight
    ) external;
}
