pragma solidity ^0.4.24;

// all time units are UNIX times in seconds
contract CallForIdeas {
    uint256 pitchUntil;
    uint256 voteUntil;

    constructor(uint256 _pitchUntil, uint256 _voteUntil) public {
        require(_pitchUntil > block.timestamp, "Pitching must close in the future");
        require(_voteUntil > _pitchUntil, "Voting must close after pitching");
        pitchUntil = _pitchUntil;
        voteUntil = _voteUntil;
    }

    mapping(address => string) public ideas; // pitcher => idea text or URI
    mapping(address => address) public votes; // voter => voted idea
    mapping(address => uint256) public voteCount; // pitcher => number of votes for pitcher's idea
    address[] public pitchers;

    mapping(address => bool) public pitched;
    mapping(address => bool) public voted;

    function pitchIdea(string idea) public {
        require(block.timestamp < pitchUntil, "Pitching is closed");
        require(pitched[msg.sender] == false, "You already pitched an idea");
        ideas[msg.sender] = idea;
        pitched[msg.sender] = true;
        pitchers.push(msg.sender);
    }

    function vote(address ideaProponent) public {
        require(block.timestamp > pitchUntil, "Pitching is still open");
        require(block.timestamp < voteUntil, "Voting is closed");
        require(voted[msg.sender] == false, "User has already voted");
        require(pitched[ideaProponent] == true, "Proposal is invalid");
        votes[msg.sender] = ideaProponent;
        voteCount[ideaProponent] += 1;
        voted[msg.sender] = true;
    }

    function listPitchers() public returns(address[]) {
        return pitchers;
    }
}
