pragma solidity ^0.4.18;

contract FunctionContract {
    uint h;
    h = 5;
	function get_balance(address _add) returns(<balance_var_type>)
{
     balance = balanceOf[_add];
     return balance;

}
function getEthBalance(address _addr) constant returns(uint) {
    return _addr.balance;
    
}
function getH(uint _get) return (uint)
{return h;}

}