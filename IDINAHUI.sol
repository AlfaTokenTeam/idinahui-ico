pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract IDINAHUI is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function IDINAHUI(address _owner)  UpgradeableToken(_owner) {
    name = "IDINAHUI";
    symbol = "HUI";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}