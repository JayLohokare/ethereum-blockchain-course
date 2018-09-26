
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


contract sampleContract is mortal{
    
    uint myVar;
    uint myVar2;
    
    //Owner address
    address owner;
    
    //Constructor
    function sampleContract() payable {
        myVar = 5;
        myVar2 = 5;
        
        //Declare the owner to be the who creates the contract
        owner = msg.sender;
    }
    
    function setMyVar(uint myNewVar){
        
        //Allowing only owner of the contract to make changes
        if (msg.sender == owner){
            myVar = myNewVar;
        }
       
    }
    function setMyVar2(uint myNewVar){
        myVar2 = myNewVar;
    }
    
    //constant functions dont need any gas
    function getMyVar() constant  returns (uint){
        return myVar;
    }
    
    function getMyVar2() constant  returns (uint){
        return myVar;
    }
    
    //FAllback anonymous function
    //Incase no data matches or somethin goes wrong
    function() payable{
        //Message object
        
    }
    
    function getThisContractBalance() constant returns(uint) {
        return this.balance;
    }
    
}
