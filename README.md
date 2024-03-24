## Concepts learnt : 

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
### Usage: hardhat [GLOBAL OPTIONS] <TASK> [TASK OPTIONS]

### GLOBAL OPTIONS:

  --config              A Hardhat config file.<br>
  --emoji               Use emoji in messages.<br>
  --help                Shows this message, or a task's help if its name is provided<br>
  --max-memory          The maximum amount of memory that Hardhat can use.<br>
  --network             The network to connect to.<br>
  --show-stack-traces   Show stack traces.<br>
  --tsconfig            A TypeScript config file.<br>
  --verbose             Enables Hardhat verbose logging.<br>
  --version             Shows hardhat's version.<br>


### AVAILABLE TASKS:

  check       ---          Check whatever you need<br>
  clean          ---       Clears the cache and deletes all artifacts<br>
  compile           ---    Compiles the entire project, building all artifacts<br>
  console             ---  Opens a hardhat console<br>
  coverage ---             Generates a code coverage report for tests<br>
  flatten     ---          Flattens and prints contracts and their dependencies<br>
  help           ---       Prints this message<br>
  node     ---             Starts a JSON-RPC server on top of Hardhat Network<br>
  run         ---          Runs a user-defined script after compiling the project<br>
  test           ---       Runs mocha tests<br>
  typechain        ---     Generate Typechain typings for compiled contracts<br>
  verify    ---            Verifies contract on Etherscan<br>
