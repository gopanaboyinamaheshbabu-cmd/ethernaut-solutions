# Level 01: Fallback

**Topic:** Access control
**Difficulty:** Easy

## Goal
Become the owner of the contract and withdraw all its balance.

## The vulnerability
The 'receive()' function only checks the msg.value is greater than zero and the contributor is already some money or not.And 'receive()' function changes the ownership of the contract without checking who is caller.If an attacker directly send some amount to the contract, the 'receive()' function gives the ownership to the attacker without checking the caller.

## Exploit steps
1. call the contribute() function with minimum amount.
2. send directly some amount to the contract with sending any data.
3. The receive() function will handle that type of call.And transfers the    ownership of contract to msg.sender.
4. Now call withdraw() function, the total amount in the contract is transfers to msg.sender

## How to fix it
First remove the ownership transfer logic. And implement in the seperate function with onlyowner can able to transfer ownership of the contract.
Then make receive() function only handle the direct calls to the contract.
## Real-world example
Missing or weak access control is the top cause of losses in
smart contract hacks, for example the Parity multisig wallet bug (2017).

## What I learned
The fallback/receive function runs whatever the caller sends, so, the access control and other logic inside it is dangerous.I first tried calling
`withdraw()` directly and it reverted because I was not the owner.