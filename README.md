Decentralized Exchange (DEX) & AlfToken
This repository contains smart contracts for a simple decentralized exchange (DEX) and a custom ERC20 token, named AlfToken.

The DEX contract allows for basic exchange functionality such as buying tokens, withdrawing tokens, and withdrawing funds. The DEX operates with a specific associated ERC20 token and the price of the token is set at the contract deployment.

The AlfToken contract represents a simple ERC20 token with a pre-determined initial supply that is minted to the contract deployer.

DEX
The DEX contract contains several methods:

sell: Allows the owner of the contract to sell tokens by transferring them from the owner's address to the contract. The number of tokens to sell is determined by the allowance set by the contract's owner.
withdrawTokens: Allows the owner of the contract to withdraw all tokens held by the contract.
withdrawFunds: Allows the owner of the contract to withdraw all ether held by the contract.
getPrice: Returns the price for a specified number of tokens.
buy: Allows anyone to buy tokens by sending ether to the contract. The number of tokens they receive is determined by the amount of ether sent and the current token price.
getTokenBalance: Returns the number of tokens currently held by the contract.
AlfToken
AlfToken is a simple ERC20 token. The contract includes a constructor function that mints a specified initial supply of tokens to the address that deploys the contract.
