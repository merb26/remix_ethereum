// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ethSend {

    constructor() payable {}
    receive() external payable { }

    // Eventos
    event sendStatus(bool);
    event callStatus(bool, bytes);

    // Transfer
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether);
    }

    // Send
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "El envio ha fallado");
    }
    
    // Call
    function sendViaCall(address payable _to) public payable {
        (bool succes, bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(succes, data);
        require(succes == true, "El envio ha fallado");
    }
}

contract ethReceiver {
    event log (uint amount, uint gas);

    receive() external payable { 
        emit log(address(this).balance, gasleft());
    }
}