// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/vock.sol";

contract VockTest is Test {
    Vock public vock;

    function setUp() public {
       vock = new Vock();
    }

    function testStop() public {
        assertEq(vock.vocked(address(this)), false);
        vock.stop();
        assertEq(vock.vocked(address(this)), true);
    }

    function testStart() public {
        assertEq(vock.vocked(address(this)), false);
        vock.stop();
        assertEq(vock.vocked(address(this)), true);
        vock.start();
        assertEq(vock.vocked(address(this)), false);
    }
}
