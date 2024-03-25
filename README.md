![image](https://github.com/saadabban76/Solidity/assets/115649011/9c3fd95a-3a96-40f2-aa54-812c5b100e28)![image](https://github.com/saadabban76/Solidity/assets/115649011/183b720b-d099-42a0-823c-57ac599e372a)## Concepts learnt : 

1. Checkpoint-1 : contract creation, variables, constructor, globalVariables, functions, functional scope.

2. Event : An event in Solidity is a way to log specific occurrences in the blockchain. It can be used to notify the frontend or other parts of the system about certain actions that happened in the contract.

3. Modifiers : they contain the piece of code that runs before and after the function call, just like the middleware in the nodejs.

4. Mapping :  It is a key-value store that allows you to associate values with unique keys. just like objects in js.

5. require : if any error occur in the contract/condition doesn't match require statement is used to handle it, the gas fees for the transaction will be reverted back to the user's wallet. This is because the require statement works by immediately stopping the execution of the contract and reverting any state changes made during the transaction 
if the condition specified in the statement is not met.


## Hardhat :

## Installing : 
npm install -D hardhat
Sub Package : @nomicfoundation/hardhat-toolbox

### Global Commands : 
![image](https://github.com/saadabban76/Solidity/assets/115649011/f30b9732-7f77-4f40-bd6a-0aad24960782)

### Important Packages : 
npm i --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai
