pragma solidity ^0.4.18;

contract FunctionContract {
    //int h = 5;
    string public standard = 'RUBY 1.0'; 
    string public name; 
    string public symbol; 
    uint8 public decimals; 
    uint256 public totalSupply; 
    uint256 public balance; 
    address public owner; 
    
    mapping (address => uint256) public balanceOf; 
    mapping (address => mapping (address => uint256)) public allowance; 
    event Transfer(address indexed from, address indexed to, uint256 value); 
    function RUBY() { 
        balanceOf[msg.sender] = 10000; 
        totalSupply = 10000; 
        name = 'RUBY'; 
        symbol = 'RUBY'; 
        decimals = 8; 
        owner=msg.sender; 
    } 
    
    modifier onlyOwner { 
        if (msg.sender != owner) throw; 
        _; 
    } 
    
	function get_balance(address _add) returns(uint256){
        balance = balanceOf[_add];
        return balance;
    }

    function getEthBalance(address _addr) constant returns(uint) {
        return _addr.balance;
    }

}