// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "hardhat/console.sol";

contract Todo{
  struct Todo {
    uint taskId;
    string content;
    bool completed;
  }

  uint private number = 0;
  Todo[] private todos;

  constructor(){}

  function setTodo(string memory _content) public {
    todos.push(Todo(number, _content, false));
    number++;
  }

  function getTodo() public view returns (Todo[] memory){
    return todos;
  }

  function changeBool(uint _taskId) public{
    todos[_taskId].completed = true;
  }
  
}