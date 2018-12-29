pragma solidity >0.4.99 <0.6.0;


contract ModifierExplain{
    
        address admin;
        string wishes = "You are hacker of dostrix";
        
        constructor() public{
            
            admin = msg.sender;
        }
        
        
        modifier onlyOwner(){
              require(msg.sender == admin);  
            _;
        }
        
        function DisplayWish() onlyOwner public view returns(string memory){
            
            return wishes;
        }
        
        
        
}