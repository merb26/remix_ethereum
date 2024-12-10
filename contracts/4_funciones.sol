// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract functions {
    
    // Funciones de tipo Pure
    function getName() pure public returns(string memory) {
        return "MANOLO";
    }

    // Funciones de tipo View
    uint y = 50;
    function getNumber() view public returns(uint) {
        return y*3;
    }
}