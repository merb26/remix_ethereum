// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract variables_modifiers {

    // Valores enteros sin signo (uint)
    uint entero;
    uint public entB = 5;

    // Valores enteros con signo
    int a;
    int8 public g = 45;

    // Cadena de caracteres ( String )
    string private str;
    string public letras = "esto es publico";

    // Booleano
    bool public booleano = true;

    // Variables bytes
    bytes32 byte1;
    bytes4 byte2;
    bytes1 byte3;

    // Algoritmo de hash
    bytes32 public hashing = keccak256(abi.encodePacked("Manolo"));

    // Variable address
    address mi_direccion;
    address public direccion1 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address public direccion2 = msg.sender;

    // Enumeracion
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;
    
    function turnOn() public {
        state = options.ON;
    }

    function turnOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options) {
        return state;
    }
}