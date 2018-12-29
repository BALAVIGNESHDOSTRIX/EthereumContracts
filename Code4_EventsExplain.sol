pragma solidity >0.4.99 <0.6.0;

contract EventsExplain{
    
    struct MessageRecord{
        
        address sender;
        address receiver;
        string message;
        
    }
    
    event Messlog(address sender,address receiver,string message);
    
    mapping(address => mapping(address => MessageRecord)) public MessRecord;
        
        function sendMess(address receiver,string memory mess) public{
            
            MessRecord[msg.sender][receiver].sender = msg.sender;
            MessRecord[msg.sender][receiver].receiver = receiver;
            MessRecord[msg.sender][receiver].message = mess;
            
            emit Messlog(msg.sender,receiver,mess);
        }
        
        
        
        
}