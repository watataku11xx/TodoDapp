const {expect} = require('chai');
const {ethers} = require('hardhat');

describe('Todo', function() {
  it('should return correct number', async function(){
    const Todo = await ethers.getContractFactory('Todo')
    const tood = await Todo.deploy(1);
    await Todo.deployed();
  });
});