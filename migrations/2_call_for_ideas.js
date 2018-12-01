//eslint-disable-next-line
const CallForIdeas = artifacts.require("./CallForIdeas.sol")

module.exports = deployer => {

  const pitchingClosingTime = Math.floor(new Date(Date.now()) / 1000) + 100
  const votingClosingTime = pitchingClosingTime + 100

  deployer.deploy(CallForIdeas, pitchingClosingTime, votingClosingTime)
}
