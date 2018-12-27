pragma solidity >0.4.99 <0.6.0;

contract explain_variables{
    
        uint256 a = 100;
        bytes32 b = 'Hello world';
        string c = 'julius is very simple';
        int256 d = 200;
        address admin;
        
        //array declaration
        
        string[] cd;
        uint256[] ds;
        
        //Structure declaration
        struct details{
            
            string name;
            
        }
        
        details det;
        
        //mapping declaration
        
        struct record{
           
            string name;
        }
        
        mapping(uint256 => record) public recordtrix;
        
        //double mapping declaration
        mapping(uint256 => mapping(uint256 => record)) public doubletrix;
        
        
        
}