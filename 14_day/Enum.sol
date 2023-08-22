// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


// Definición del Enum EstadoPedido
enum EstadoPedido {
    Pendiente,
    Preparado,
    Entregado
}

contract MiContrato {

    // Definición de la estructura Pedido
    struct Pedido {
        address cliente;
        uint256 monto;
        EstadoPedido estado;
    }

    // Mapeo para almacenar los pedidos
    mapping(address => Pedido) public pedidos;

    // Función para crear un nuevo pedido
    function crearPedido(address _cliente, uint256 _monto) public {
        // Creamos una nueva instancia de la estructura Pedido con el estado inicial Pendiente
        Pedido memory nuevoPedido = Pedido(_cliente, _monto, EstadoPedido.Pendiente);
        // Almacenamos el pedido en el mapeo utilizando la dirección del cliente como clave
        pedidos[_cliente] = nuevoPedido;
    }

    // Función para actualizar el estado de un pedido
    function actualizarEstadoPedido(address _cliente, EstadoPedido _nuevoEstado) public {
        // Accedemos al pedido a través del mapeo y actualizamos su estado
        Pedido storage pedidoExistente = pedidos[_cliente];
        pedidoExistente.estado = _nuevoEstado;
    }

    // Función para obtener el estado de un pedido
    function obtenerEstadoPedido(address _cliente) public view returns (EstadoPedido) {
        return pedidos[_cliente].estado;
    }

}