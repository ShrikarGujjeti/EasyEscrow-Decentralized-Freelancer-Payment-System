# EasyEscrow — Decentralized Freelancer Payments

A Solidity smart contract that holds a client's payment in escrow and releases it to a freelancer only after the job is accepted and completed — no middleman.

**Stack:** Solidity ^0.8 · Remix IDE · MetaMask · Ethereum Sepolia testnet

---

## How it works

```
Client deploys + funds ──► assignFreelancer() ──► Freelancer acceptJob()
                                                          │
            releasePayment()  ◄── Client approves ◄── markCompleted()
                  │
         ETH sent to freelancer        (cancelJob() refunds the client any time before completion)
```

| Function | Who can call | Rule enforced |
|---|---|---|
| `constructor()` *(payable)* | Client | Deposit becomes `jobAmount`; deployer becomes `client` |
| `assignFreelancer(address)` | Client | Only the client |
| `acceptJob()` | Freelancer | Only the assigned freelancer |
| `markCompleted()` | Freelancer | Job must be accepted first |
| `releasePayment()` | Client | Job must be completed; transfers the full balance to the freelancer |
| `cancelJob()` | Client | Not allowed after completion; refunds the client |
| `getBalance()` | Anyone | View function |

Access control is enforced with `require` checks on `msg.sender`, and state flags (`jobAccepted`, `jobCompleted`) stop functions from being called out of order.

## Try it (Remix + Sepolia)

1. Open [Remix IDE](https://remix.ethereum.org) and load `contracts/EasyEscrow.sol`.
2. Compile with Solidity 0.8.x.
3. In *Deploy & Run*, choose **Injected Provider – MetaMask** on Sepolia (get test ETH from a faucet).
4. Enter the job amount in *Value* and deploy from the client account.
5. Call `assignFreelancer` (client) → switch to the freelancer account → `acceptJob` → `markCompleted` → switch back → `releasePayment`.

## Limitations and next steps

- Single job per contract; a factory contract could manage many jobs.
- No dispute resolution — a third-party arbiter or DAO vote could be added.
- Uses `transfer`; a production version would use `call` with a reentrancy guard and a pull-payment pattern.
- No frontend yet; a React + ethers.js UI is planned.
- No automated tests yet; Hardhat/Foundry tests are planned.

## Author

**Shrikar Vidyasagar Gujjeti** — [GitHub](https://github.com/ShrikarGujjeti) · [LinkedIn](https://www.linkedin.com/in/shrikargujjeti/)

License: MIT
