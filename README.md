# SimpleInsurance Smart Contract

## Overview

The `SimpleInsurance` smart contract is a simple insurance policy management system on the Ethereum blockchain. It allows users to purchase an insurance policy, check their policy details, and claim insurance under certain conditions.

## Features

- **Purchase Insurance Policy**: Users can purchase an insurance policy by specifying the premium and coverage amount.
- **Claim Insurance**: Users can claim their insurance, which deactivates the policy after claiming.
- **Get Policy Details**: Users can view their insurance policy details.

## Prerequisites

- Solidity ^0.8.0
- Ethereum development environment (e.g., [Remix](https://remix.ethereum.org/), [Truffle](https://www.trufflesuite.com/truffle), or [Hardhat](https://hardhat.org/))

## Contract Details

### Purchase Policy

Allows a user to purchase an insurance policy by providing a premium and coverage amount.

```solidity
function purchasePolicy(uint _premium, uint _coverageAmount) public;
```
####_premium: The amount the user pays for the policy.
####_coverageAmount: The amount the user will be covered for.

###Claim Insurance
#####Allows a user to claim their insurance. After claiming, the policy is deactivated.

```solidity
function claimInsurance() public;
```
####This function checks if the policy is active and if there is coverage available. If so, it deactivates the policy.

###Get Policy Details
####Returns the details of the user's policy.

```solidity
function getPolicyDetails() public view returns (uint, uint, bool);
```
