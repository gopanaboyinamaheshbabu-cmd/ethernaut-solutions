# Level 01: Fallout

**Topic:** Access control
**Difficulty:** Easy

## Goal
Become the owner of the contract.

## The vulnerability
The 'Fallout()' function doesnot check who is caller.And transfers the ownership to the immediate caller with checking who is caller.If an attacker calls the 'Fallout()' function, Immediately transfers the ownership of the contract.

## Exploit steps
1.Call 'Fallout()' function.
then caller become owner!

## How to fix it
First remove the ownership transfer logic in 'Fallout()' function. And implement in the seperate function with onlyowner can able to transfer ownership of the contract.

## What I learned
If the ownership transfer logic implementation without any checks leads to financial loss.