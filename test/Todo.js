const {expect} = require('chai');
const {ethers} = require('hardhat');

describe('Todo', function() {
  it('should return correct number', async function(){
    const Todo = await ethers.getContractFactory('Todo')
    const todo = await Todo.deploy(1);
    await todo.deployed();

    expect(await todo.referenceNumber()).to.equal(1);

    const setNumber = await todo.setNumber(2);

    await setNumber.wait();

    expect(await todo.referenceNumber()).to.equal(2);
  });
});