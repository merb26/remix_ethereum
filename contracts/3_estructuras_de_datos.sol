
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract data_structures {

    // Estructura de datos de un cliente
    struct Customer {
        uint256 id;
        string name;
        string email;
    }

    // Variable de tipo cliente
    Customer customer1 = Customer(1, "Manolo", "manolo@gmail.com");

    // Array de uints de longitud fija
    uint256 [5] public uints = [1, 2, 3, 4, 5];

    // Array dinamico de tipo de cliente
    Customer [] public listCustomers;

    // Nuevos datos en un array
    function setCustomer(uint256 _id, string memory _name, string memory _email) public{

        Customer memory customer = Customer(_id, _name, _email);
        listCustomers.push(customer);

    }

    // Mappings
    mapping (address => uint256) public address_uint256;
    mapping (string => uint256 []) public string_listUints;
    mapping (address => Customer) public address_dataStructure;

    // Asignar un numero a una direccion
    function assignNumber(uint256 _number) public {
        address_uint256[msg.sender] = _number;
    }

    // Asignar varios numeros a una direccion
    function assignList(string memory _name, uint256 _number) public {
        string_listUints[_name].push(_number);
    }

    // Asignacion de una estructura de datos a una direccion
    function assignDataStructure(uint _id, string memory _name, string memory _email) public {
        address_dataStructure[msg.sender] = Customer(_id, _name, _email);
    }

}