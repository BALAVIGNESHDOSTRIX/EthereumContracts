pragma solidity >0.4.99 <0.6.0;

contract Message{
    
        
            address owner;
            string[] mess;
            
            
            constructor() public {
                
                owner = msg.sender;
            }
            
            
            function addmess(string memory mes) public{
                
                require( msg.sender == owner);
                
                    mess.push(mes);
            }
           
            function showlen() public view returns(uint256){
                
                return mess.length;
            }
            
            function showmess(uint256 index) public view returns(string memory){
                
                return mess[index];
            }
}