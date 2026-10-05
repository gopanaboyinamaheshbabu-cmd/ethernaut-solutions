// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import {Test} from "forge-std/Test.sol";
import {Fal1out} from "../src/levels/Fallout.sol";

contract Level02Test is Test {
    Fal1out target;
    address attacker = makeAddr("Attacker");

    function setUP() public {
        target = new Fal1out();
    }

    function testExploit() public {
        vm.startPrank(attacker);
        target.Fallout();
        assertEq(attacker, target.owner());
        vm.stopPrank();
    }
}
