// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Insurance {
    struct Policy {
        uint premium;
        uint coverageAmount;
        bool isActive;
    }

    mapping(address => Policy) public policies;

    // Function to purchase an insurance policy
    function purchasePolicy(uint _premium, uint _coverageAmount) public {
        require(_premium > 0, "Premium must be greater than zero");
        require(_coverageAmount > 0, "Coverage amount must be greater than zero");
        policies[msg.sender] = Policy(_premium, _coverageAmount, true);
    }

    // Function to claim insurance, which deactivates the policy after claiming
    function claimInsurance() public {
        Policy storage policy = policies[msg.sender];
        require(policy.isActive, "No active policy found");
        require(policy.coverageAmount > 0, "No coverage available");

        // Logic to transfer the coverage amount would go here

        policy.isActive = false;  // Deactivate policy after claiming
    }

    // Function to get the policy details
    function getPolicyDetails() public view returns (uint, uint, bool) {
        Policy storage policy = policies[msg.sender];
        return (policy.premium, policy.coverageAmount, policy.isActive);
    }
}
