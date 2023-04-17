const {expect} = require('chai');
const {ethers} = require('hardhat');

describe('Todo', function() {
  it('should return correct number', async function(){
    const Todo = await ethers.getContractFactory('Todo')
    const todo = await Todo.deploy();
    await todo.deployed();

    const setTodo = await todo.setTodo('English assginment');

    await setTodo.wait();
    
  });
});