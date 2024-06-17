// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

contract Game{

    constructor () payable {}

    function pickaNumber() private view returns(uint256){
        uint256 picked= uint256(
            keccak256(abi.encodePacked(blockhash(block.number),block.timestamp))
        );
        return picked;
    }

    function declare(uint256 _guess) public {
        uint256 guess = pickaNumber();
        if(_guess == guess){
            (bool sent,) = msg.sender.call{value : 0.01 ether}("");
            require(sent,"Ether sent unsuccessful");
        }
    }

      function getBalance() public view returns (uint256) {
        return address(this).balance;
    }


}