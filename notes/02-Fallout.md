# Level 01: Fallout

**Topic:** Access control
**Difficulty:** Easy

## Goal
Become the owner of the contract.

## The vulnerability
The 'Fal1out()' function doesnot check who is caller.And transfers the ownership to the immediate caller with checking who is caller.If an attacker calls the 'Fal1out()' function, Immediately transfers the ownership of the contract.

## Exploit steps
1.Call 'Fal1out()' function.
then caller become owner!

## How to fix it
First remove the ownership transfer logic in 'Fal1out()' function. And implement in the seperate function with onlyowner can able to transfer ownership of the contract.

## What I learned
If the ownership transfer logic implementation without any checks leads to financial loss.