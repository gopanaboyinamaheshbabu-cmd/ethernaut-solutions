// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import {Test, console} from "forge-std/Test.sol";
import {Fallout} from "../src/levels/Fallout.sol";

contract Level02Test is Test {
    Fallout target;
    address attacker = makeAddr("Attacker");

    function setUp() public {
        target = new Fallout();
    }

    function testExploit() public {
        vm.startPrank(attacker);
        target.Fal1out();
        assertEq(attacker, target.owner());
        vm.stopPrank();
    }
}
