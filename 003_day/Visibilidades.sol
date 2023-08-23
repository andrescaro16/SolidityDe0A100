// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FuncionVisibilidad {

    uint256 public miNumero;

    /*
     Las funciones públicas también forman parte de la interfaz del contrato y pueden ser llamadas tanto internamente 
     como mediante llamadas de mensaje. Las funciones marcadas como "public" pueden ser llamadas desde cualquier lugar, 
     tanto dentro como fuera del contrato. Son parte de la interfaz externa del contrato y pueden ser llamadas por otros 
     contratos o por cuentas externas a la blockchain.
    */
    function setMiNumero(uint256 _numero) public {
        miNumero = _numero;
    }

    /*
    Las funciones externas forman parte de la interfaz del contrato, lo que significa que pueden ser llamadas desde otros 
    contratos y mediante transacciones. Una función externa f no puede ser llamada internamente (es decir, f() no funciona, 
    pero this.f() sí). Las funciones marcadas como external solo pueden ser llamadas desde fuera del contrato. No pueden 
    ser llamadas por otras funciones dentro del mismo contrato ni por contratos derivados.
    */
    function obtenerMiNumero() external view returns (uint256) {
        return miNumero;
    }

    /*
    Las funciones internas solo pueden ser accedidas desde el contrato actual o desde contratos derivados de él. No pueden 
    ser accedidas externamente. Dado que no se exponen al exterior a través de la ABI del contrato, pueden tomar parámetros 
    de tipos internos como mappings o referencias de almacenamiento.
    */
    function _hacerAlgo() internal pure {
        // hacer algo
    }
    
    /*
    Las funciones privadas son similares a las internas, pero no son visibles en contratos derivados.
    */
    function _hacerAlgoMas() private pure {
        // hacer algo más
    }
}