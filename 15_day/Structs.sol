// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StructExample {
    
    struct Usuario {
        address direccionCorreo;
        string nombre;
        string apellido;
    }

    Usuario[] usuarios;

    function agregarUsuario(address _direccionCorreo, string memory _nombre, string memory _apellido) public {
        usuarios.push(Usuario({
            direccionCorreo: _direccionCorreo,
            nombre: _nombre,
            apellido: _apellido
        }));
    }

    function obtenerNombreCompleto(uint index) public view returns (string memory) {
        require(index < usuarios.length, "\xC3\x8Dndice fuera de rango");
        Usuario memory usuario = usuarios[index];
        return string(abi.encodePacked(usuario.nombre, " ", usuario.apellido));
    }

}