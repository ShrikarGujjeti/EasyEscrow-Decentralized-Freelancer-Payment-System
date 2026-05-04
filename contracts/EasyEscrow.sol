// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EasyEscrow {
    address public client;
    address public freelancer;
    uint public jobAmount;
    bool public jobAccepted;
    bool public jobCompleted;

    constructor() payable {
        // client creates the contract and funds it
        client = msg.sender;
        jobAmount = msg.value;
    }

    function assignFreelancer(address _freelancer) public {
        require(msg.sender == client, "Only client can assign freelancer");
        freelancer = _freelancer;
    }

    function acceptJob() public {
        require(msg.sender == freelancer, "Only freelancer can accept");
        jobAccepted = true;
    }

    function markCompleted() public {
        require(msg.sender == freelancer, "Only freelancer can mark done");
        require(jobAccepted, "Job not accepted yet");
        jobCompleted = true;
    }

    function releasePayment() public {
        require(msg.sender == client, "Only client can release funds");
        require(jobCompleted, "Job not completed yet");
        payable(freelancer).transfer(address(this).balance);
    }

    function cancelJob() public {
        require(msg.sender == client, "Only client can cancel");
        require(!jobCompleted, "Cannot cancel after completion");
        payable(client).transfer(address(this).balance);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
