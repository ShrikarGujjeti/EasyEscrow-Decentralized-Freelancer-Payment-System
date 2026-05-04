# 🔗 EasyEscrow: Decentralized Freelancer Payment System

EasyEscrow is a blockchain-based escrow system designed to enable secure and trustless payments between clients and freelancers using smart contracts.

---

## 🚀 Features

- 💰 Secure payment escrow using smart contracts  
- 🔐 Trustless transaction system (no intermediary required)  
- 👨‍💻 Client assigns freelancer and deposits funds  
- ✅ Freelancer accepts and completes the job  
- 🔓 Automatic payment release after approval  
- ❌ Job cancellation support  

---

## 🧠 Tech Stack

- Solidity  
- Remix IDE  
- MetaMask  
- Ethereum Test Network (Sepolia)  

---

## ⚙️ How It Works

The system follows a secure escrow workflow:

1. Client deploys contract and deposits ETH  
2. Client assigns freelancer address  
3. Freelancer accepts the job  
4. Freelancer completes the task  
5. Client approves completion  
6. Smart contract releases payment automatically  

👉 This ensures fairness and eliminates third-party dependency :contentReference[oaicite:0]{index=0}  

---

## 🔄 Workflow States

- `jobAccepted` → true when freelancer accepts  
- `jobCompleted` → true when work is done  
- Payment released only after completion  

---

## 📂 Project Structure
/contracts
EasyEscrow.sol

/scripts
deploy.js

README.md

---

## ▶️ Setup & Usage

### 1. Open Remix IDE
https://remix.ethereum.org

### 2. Compile Contract
- Solidity version: 0.8+

### 3. Connect MetaMask
- Use Injected Web3  
- Connect to Sepolia test network  

### 4. Deploy Contract
- Enter job amount  
- Deploy using MetaMask  

### 5. Interact with Contract
- assignFreelancer()  
- acceptJob()  
- markCompleted()  
- releasePayment()  

---

## 📸 Demo

> Add screenshots from Remix showing:
- Contract deployment  
- Freelancer assignment  
- Payment release  

(Your report already has these screenshots — use them) :contentReference[oaicite:1]{index=1}  
i have a report in the files please refer to it
---

## ⚠️ Limitations

- No frontend UI (contract-only system)  
- Requires MetaMask and test ETH  
- No dispute resolution mechanism  

---

## 🚀 Future Improvements

- Web-based frontend (React + Web3.js)  
- Multi-user system  
- Dispute resolution mechanism  
- Support for multiple contracts  

---

## 👨‍💻 Author

Shrikar Vidyasagar Gujjeti  
GitHub: https://github.com/ShrikarGujjeti  

---

## ⭐ Support

If you found this useful, consider giving it a ⭐!
