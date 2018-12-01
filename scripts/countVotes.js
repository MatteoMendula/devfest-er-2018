const { abi, networks } = require("./../build/contracts/CallForIdeas.json")

module.exports = callback => {
  const callForIdeas = web3.eth.contract(abi)

  contractInstance = callForIdeas.at(networks[web3.version.network].address)

  const pitchers = contractInstance.listPitchers.call()

  const votes = {}

  for (const pitcher in pitchers) {
    votes[pitchers[pitcher]] = {
      "votes": contractInstance.voteCount.call(pitchers[pitcher]).toString(),
      "idea": contractInstance.ideas.call(pitchers[pitcher])
    }
  }

  console.log(JSON.stringify(votes, null, 4))

  callback()
}
