Start a new chain:
geth init .\genesis.json --datadir myChainData

Create a new wallet account, allocate ethere:
1. geth --datadir myChainData account new
The command returns address
Use this address and add it to genesis.json in alloc
(Prefix with 0x)

geth --datadir .\myChainData\ --rpc --rpccorsdomain "http://127.0.0.1:8545" --nodiscover 

Ethereum wallet should now connect to private net when opened

Adding ether to wallet ->
geth attach ipc://./pipe/geth.ipc
miner.setEtherbase(eth.accounts[0])
miner.start(1)


Creating a contract:
Go to etherm wallet and create a new contract (Copy paste the code)
Copy the address and ABI interface into html
Make sure to clone Web3.js 