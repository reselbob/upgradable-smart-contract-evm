// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract smart_contract is Initializable, UUPSUpgradeable,  OwnableUpgradeable {
    function initialize() initializer public {
            __Ownable_init();
            __UUPSUpgradeable_init();
    }


    function getSecretHelloMessage()  public pure returns (string memory){
        return "Hello World";
    }

    function _authorizeUpgrade(address newImplementation) internal onlyOwner override{}
}
