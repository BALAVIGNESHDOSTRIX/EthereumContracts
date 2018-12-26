pragma solidity >0.4.99 <0.6.0;

contract attendence {
    
        address admin;
        
        struct Sdetails{
            
            string name;
            uint256 rollno;
            uint128 Age;
            string std;
            
        }
        
        event successAdd(address _nameadd,string name_,uint256 roll,uint128 age,string std);
        mapping(address => Sdetails) public sdet;
        
        
        constructor() public{
            
            admin = msg.sender;
        }
        
        
        function addStD(string memory name,uint256 roll,uint128 age,string memory std) public {
            require(admin != msg.sender);
            sdet[msg.sender].name = name;
            sdet[msg.sender].rollno = roll;
            sdet[msg.sender].Age = age;
            sdet[msg.sender].std = std;
            emit successAdd(msg.sender,name,roll,age,std);
        
        }
        
        modifier onlyAdmin() {
            require(msg.sender == admin);
            _;
        }
        
        
        function deleteRec(address _stadd) onlyAdmin public {
            delete sdet[_stadd];
        }
}
