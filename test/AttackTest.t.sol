// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";
import {Test} from "forge-std/Test.sol";
import {Attack} from "../src/Attack.sol";
import {Game} from "../src/Game.sol";

contract AttackTester is Test {
    Game public game;
    Attack public attack;

    function setUp() public {
        game = new Game{value: 0.01 ether}();
    }

    function test_attack() public {
        attack = new Attack(address(game));
        attack.attack();
        console.logUint(game.getBalance());
        // assertEq(game.getBalance(), 0);
    }
}