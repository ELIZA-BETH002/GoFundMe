# Donations Smart Contract

## Overview

This project implements a simple donations system using a Clarity smart contract on the Stacks blockchain, along with a basic web interface for user interaction. The system allows users to make donations, view total donations, and check individual donor contributions.

## Table of Contents

1. [Features](#features)
2. [Technologies Used](#technologies-used)
3. [Smart Contract](#smart-contract)
4. [Web Interface](#web-interface)
5. [Setup and Installation](#setup-and-installation)
6. [Usage](#usage)
7. [Testing](#testing)
8. [Deployment](#deployment)
9. [Security Considerations](#security-considerations)
10. [Future Improvements](#future-improvements)
11. [Contributing](#contributing)
12. [License](#license)

## Features

- Make donations in STX (Stacks token)
- View total donations
- Check individual donor contributions
- Withdraw funds (contract owner only)

## Technologies Used

- Clarity: Smart contract language for the Stacks blockchain
- HTML/CSS/JavaScript: Front-end web interface
- Stacks.js: JavaScript library for interacting with the Stacks blockchain (to be implemented)

## Smart Contract

The Clarity smart contract (`donations.clar`) includes the following main functions:

- `donate`: Allows users to make donations
- `get-total-donations`: Returns the total amount of donations
- `get-donor-donations`: Returns the total donations made by a specific donor
- `withdraw`: Allows the contract owner to withdraw funds

## Web Interface

The web interface (`index.html`) provides a simple UI for users to interact with the smart contract. It includes:

- Input field for donation amount
- Button to make donations
- Button to check total donations
- Input field and button to check individual donor contributions
- Status display area for feedback

## Setup and Installation

1. Clone the repository:
2. Install Clarinet (Clarity development tool):
Follow the instructions at https://github.com/hirosystems/clarinet

3. Install Node.js and npm (for future Stacks.js integration)

4. (Optional) Set up a local Stacks blockchain for testing:
Follow the instructions at https://docs.stacks.co/understand-stacks/local-setup

## Usage

1. Deploy the smart contract (see [Deployment](#deployment) section)

2. Open `index.html` in a web browser to interact with the dApp

3. Connect your Stacks wallet (integration to be implemented)

4. Use the UI to make donations, check total donations, and view individual contributions

## Testing

1. Write unit tests for the Clarity smart contract using Clarinet

2. Run tests
3. For the web interface, manual testing can be performed using the UI

## Deployment

1. Deploy the smart contract to the Stacks blockchain
2. Update the contract address in the web interface code

3. Host the web interface on a web server or IPFS

## Security Considerations

- Ensure proper access control for the `withdraw` function
- Implement input validation and sanitization in the smart contract and UI
- Use secure practices when handling user funds and sensitive data
- Conduct a thorough security audit before mainnet deployment

## Future Improvements

- Integrate Stacks.js for real blockchain interactions
- Implement wallet connection and transaction signing
- Add support for different types of tokens (SIP-010 compliant)
- Create a leaderboard of top donors
- Implement donation goals and milestones

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
