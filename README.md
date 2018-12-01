# devfest-er-2018

repo per workshop Ethereum Blockchain development  
GDG DevFest Emilia Romagna 2018


## Software utilizzati
- [Node.js](https://nodejs.org/en/) alla versione 8.10.0 + npm  
Tutte le altre componenti necessarie sono dipendenze di progetto scaricate con npm

## Istruzioni
- `npm install` per installare le dipendenze di progetto (`ganache-cli`, `truffle`, ...)  
- `npm run ganache-cli` per avviare la blockchain Ethereum locale  
- `npm run compile` per compilare gli smart contract  
- `npm run migrate` per pubblicare gli smart contract compilati sulla blockchain Ethereum locale  


## Script per interagire con lo smart contract ("Call for Ideas platform")
- `npm run pitch` per fare un pitch di un'idea sullo smart contract  
- `npm run vote` per votare la proposta del pitch precedente  
- `npm run count` per scaricare la lista dei pitchers con relative idee e voti ricevuti per ciascuna idea  

## Comandi addizionali
- `npm run clean` per svuotare la cartella `build` con gli smart contract compilati

## Materiale di approfondimento
[Bitcoin whitepaper](https://bitcoin.org/bitcoin.pdf)  
[Ethereum whitepaper](http://blockchainlab.com/pdf/Ethereum_white_paper-a_next_generation_smart_contract_and_decentralized_application_platform-vitalik-buterin.pdf)  
[Geth RPC documentation](https://github.com/ethereum/wiki/wiki/JSON-RPC)  
[Truffle documentation](https://truffleframework.com/docs/truffle/overview)  
[Solidity documentation](https://solidity.readthedocs.io/en/v0.4.24/index.html)  
