
pragma solidity ^0.4.0;

//constant replaced by view and pure
//View when readonly
//pure when no reads at all

contract MyContract{

    address creator;
    uint256 myNumber;

    function MyContract() public{
        creator = msg.sender;
        myNumber = 3;
    }

    function getCreator() public  view returns(address){
        return creator;
    }

    function getNumber() public view  returns(uint256){
        return myNumber;
    }

    function setNmber(uint256 newNmber) public {
        myNumber = newNmber;
    } 

    function kill() public{
        if(msg.sender == creator){
            suicide(creator);
        }
    }
    

}