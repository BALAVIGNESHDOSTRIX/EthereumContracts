pragma solidity >0.4.99 <0.6.0;

contract FunctionExplain{
    
    string grade;
    uint256 total;
    
    
    function setRecord(string memory grad,uint256 tot) public {
        
        grade = grad;
        total = tot;
    }
    
    
    function getRecord() public view returns(string memory grad,uint256 ts){
        
        return (grade,total);
    }
}