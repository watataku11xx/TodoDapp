// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "hardhat/console.sol";

contract Todo{

  int private number;

  constructor(int _number){
    number = _number;
  }

  function referenceNumber() view public returns (int){
    return number;
  }

  function referenceNumber2() view public{
    console.log("good, morning2");
  }
}