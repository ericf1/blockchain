DAPS -> decentralilzed -> smart contracts
DAPS' backend is decentralized peer-to-peer (etherum)

Smart contract: program that runs when conditions are met

Transaction Hash: Unique identifer for testnet (blockchain) to identify TRANSACTION
Status: status
Block #: The block the transaction is inside
Timestamp: Time of recieved
From: From address (faucet)
To: To address (us)
Value:

Gas: A unit of computational measure
Transactions cost money through node (incentivise people to run nodes)

Computational expense

Transaction Fee = Gas Price \* Gas Used

SENDING COSTS GAS

Block, Nonce, Data -> Hash
Miners need to find a Nonce that when hashed with Block would start with four 0s.
Problem that miners need to solve is using the given Block and Data to find a fitting Nonce that equivates to the correct hash format (ie. 4 0s at the beginning)

Block chain is with MULTIPLE blocks
Block, Nonce, Data AND Prev -> Hash
The first block of the blockchain is the Genesis (prev hash DNE)

Blockchains is immuatable because the solutions rely on the previous block

Peer to Peer transactions (decentralization example)
Independent users have their own blockchains as miners
The MAJORITY hold the power and dictate which blockchain is correct

Recap:
Hashing algorithms makes data into hash
Mining is the solution to the problem (hash that starts with three zeros)
Blockchain: Block, Nonce, Data, Prev, Hash
Majority rules to create decentralized
Nonce: number used once (the solution) (also the number of transactions from a given address)

Public & Private Keys
Private keys signs transactions and public keys to verify the transaction
Data + Private Key -> digital signature
Public key + digital signature -> Verify
