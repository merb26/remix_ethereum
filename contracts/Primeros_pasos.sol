// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

// Importar un Smart Contract desde OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Declaracion del SmartContract
contract PrimerContrato is ERC721 {
    
    // Direccion de la persona que despliega el contrato
    address public dueno;

    /* Almacenamos en la variable "dueno" la direccion de la persona que 
    despliega el contrato */
    constructor (string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        dueno = msg.sender;
    }
}