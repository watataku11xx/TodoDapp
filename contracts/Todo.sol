// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "hardhat/console.sol";

contract Todo{

  int public number;

  constructor(int _number){
    number = _number;
  }

  function referenceNumber() view private returns (int){
    console.log("good, morning");
    return number;
  }

  function referenceNumber2() view private{
    console.log("good, morning2");
  }
}