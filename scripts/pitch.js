const { abi, networks } = require("./../build/contracts/CallForIdeas.json")

module.exports = callback => {
  const callForIdeas = web3.eth.contract(abi)

  callForIdeasInstance = callForIdeas.at(networks[web3.version.network].address)

  callForIdeasInstance.pitchIdea.sendTransaction("this is a test", { "from": web3.eth.accounts[1], "gas": 200000 })

  callback()
}
