# SprintCheckout Smart Contract

## Overview
The SprintCheckout contract is designed to facilitate token transfers for payment processing on blockchain platforms. This contract is built using Solidity and integrates with the OpenZeppelin ERC20 interface to ensure safe, standard-compliant token transactions.

## Features
- **Token Transfers**: Allows for secure transfer of ERC20 tokens from a buyer to a merchant, and a fee to the SprintCheckout service.
- **Safe Transfers**: Utilizes a private helper function `_safeTransferFrom` to safely perform token transfers, ensuring that all transactions meet the required token allowance and complete successfully.

## Dependencies
The contract uses OpenZeppelin's ERC20 interface for standard compliant token interactions and the Hardhat console for local development and testing.

### Installation
To set up the development environment, you need Node.js and npm installed. Then, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/your-github/sprintcheckout-contract.git
    cd sprintcheckout-contract
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

3. Compile the contract:
    ```bash
    npx hardhat compile
    ```

## Usage
To interact with the contract, deploy it to a blockchain using Hardhat or another Ethereum development environment. Ensure that you provide an ERC20 token address that the contract will interact with during deployment.

### Functions
- **`transferFrom(address selectedToken, address sender, address merchant, address sprintcheckout, uint amount, uint spcFee)`**: Initiates a payment from `sender` to `merchant` and a fee payment to `sprintcheckout`. Both the `amount` and `spcFee` are specified in the smallest unit of the token.

## Contributing
Contributions are welcome. Please feel free to submit pull requests or open issues to discuss proposed changes or enhancements.

## License
Specify your license or state that the project is unlicensed and free for use.
