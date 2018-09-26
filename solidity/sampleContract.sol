//General Layout ->

/*
//Declare te contract version and type
pragma solidity ^0.4.0;

//analogous to Classes
contract NAME {
    uint myVar;
    functio name(){
        myVar = 5;
    }
    
    function setmyVar(unit myNewVar){
        myVar = myNewVar;
    }
    
    //constant functions dont need any gas
    function getMyVar() constant return (unit){
        return myVar;
    }
}

*/

pragma solidity ^0.4.0;

contract sampleContract {
    uint myVar;
    
    function name(){
        myVar = 5;
    }
    
    function setmyVar(uint myNewVar){
        myVar = myNewVar;
    }
    
    //constant functions dont need any gas
    function getMyVar() constant returns (uint){
        return myVar;
    }
}
