pragma solidity ^0.4.0;


contract mortal{
    
    address owner;
    
    function mortal(){
        owner = msg.sender;
    }
    
    //Making checks
    //Basically modifiers are fancy if-else
    //Check the kill function
    modifier onlyOwner(){
        if (msg.sender == owner){
            _;
            //Do whatever it wants to do
        }
        else{
            throw;
        }
    }
    
    //Functio to kill the contract
    function kill() onlyOwner {
        suicide(owner);
    }
    
}
