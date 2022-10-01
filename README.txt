**Theory Questions:**

Explain the difference between the following terms in the smart contract.

- A view function and pure function
- A payable and nonpayable function
- Constant data type and immutable data type.
- A Read Function and Write function.

**Answers:**

- A view function can read contract state but cannot modify it, whereas a pure function 
can neither read contract state nor modify it. Writing to state variables, emitting events, 
creating other contracts are considered view functions. While, reading from state variables, 
accessing address(this).balance or <address>.balance, accessing any of the members of block, 
tx, msg are considered pure functions.

- A payable function is a function that allows someone to receive ether sent to a contract 
and run code to the account for this deposit. While a nonpayable function will reject ether
sent to it.

- For constant data types, the value has to be fixed at compile-time, and it has to be assigned 
where the variable is declared, while for immutable, it can be assigned an arbitrary value in the 
constructor of the contract or at the point of their declaration. They cannot be read during 
construction time and can only be assigned once.

- A read function is a function that does not change the state of the EVM, while a write function
modifies the EVM state. For instance when a person searches for an item in an online store,
he is calling a read function, because he is not changing anything. But if the person goes ahead 
to upload items to his store, he is calling a write function, because such action is modifying the 
state of the EVM.