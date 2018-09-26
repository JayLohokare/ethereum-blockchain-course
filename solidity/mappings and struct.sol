
pragma solidity ^0.4.0;

import "mortal.sol";

contract sampleContract is mortal{
    
    uint myVar;
    //Mapping maps a to b (Any a to any b)
    mapping(address => Permission) myAddressMappng;
    
    struct Permission {
        bool isAllowed;
        uint maxTransferAmount;
    }
    
    function sampleContract() payable {
        myVar = 5;
        myAddressMappng[msg.sender] = Permission(true, 5);
    }
    
    function setMyVar(uint myNewVar) onlyOwner{
        myVar = myNewVar;
    }

    function getMyVar() constant  returns (uint){
        return myVar;
    }
 
    
    function() payable{
        
    }
    
    function getThisContractBalance() constant returns(uint) {
        return this.balance;
    }
    
}
