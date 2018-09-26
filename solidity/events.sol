
pragma solidity ^0.4.0;

import "mortal.sol";

contract simpleWallet is mortal{
    
    mapping(address => Permission) myAddressMappng;
    
    
    //events
    event someOneAddedSomeOneToSendersList(address personWhoAdded, address personWhoGotAdded, uint amount);
    
    struct Permission {
        bool isAllowed;
        uint maxTransferAmount;
    }
    
    function addAddressToSendersList(address permitted, uint maxTransferAmount) onlyOwner{
        myAddressMappng[permitted] = Permission(true, maxTransferAmount);
        
        //Triggering event
        //Events can be listened to in JS, to perform actions based on events
        someOneAddedSomeOneToSendersList(msg.sender, permitted, maxTransferAmount);
        
    }
    
    function sendFunds(address receiver, uint amountInWei){
        if(myAddressMappng[msg.sender].isAllowed){
            if(myAddressMappng[msg.sender].maxTransferAmount >= amountInWei){
                bool isAmountSent = receiver.send(amountInWei); 
                if(!isAmountSent){
                    throw;
                }
                
                //Alternatively use receiver.transfer to throw directly   
            }
        }
    }
    
    function() payable{
    }
    
   
    
}
