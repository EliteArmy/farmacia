<?php

class Cliente extends Persona{
	private $idCliente;
	private $fechaRegistro;
	private $estado;

	public function __construct(
		$idCliente = null,
		$fechaRegistro = null,
		$estado = null
	){
		$this->idCliente = $idCliente;
		$this->fechaRegistro = $fechaRegistro;
		$this->estado = $estado;
	}

	public function __toString(){
		$var = "Empleado{"
		."idCliente: ".$this->idCliente." , "
		."fechaIngreso: ".$this->fechaRegistro." , "
		."estado: ".$this->estado;
		return $var."}";
	}

	public function getIdCliente(){
		return $this->idCliente;
	}
	public function setIdCliente($idCliente){
		$this->idCliente = $idCliente;
    }

	public function getFechaRegistro(){
		return $this->fechaRegistro;
	}
	public function setFechaRegistro($fechaIngreso){
		$this->fechaRegistro = $fechaRegistro;
    }

	public function getEstado(){
		return $this->estado;
	}
	public function setEstado($estado){
		$this->estado = $estado;
	}


    public static function leer($conexion){
        $sql = 'SELECT * FROM VistaClientes';
        $rows = $conexion->query($sql);
        return $rows;
    }

	public function leerPorId($conexion){
	  $sql = '
			SELECT * FROM VistaClientes
			WHERE id_cliente = %s
		';
		$valores = [$this->getIdEmpleado()];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
    }

	public function crear($conexion){
		$sql = "
			CALL SP_Insertar_Cliente(
				'%s','%s','%s','%s','%s','%s','%s','%s',
				DATE('%s'),'%s',DATE('%s'),'%s','%s','%s', %s, @mensaje, @error
			);
		";


    $valores = [
			$this->getPrimerNombre(),
			$this->getSegundoNombre(),
			$this->getPrimerApellido(),
			$this->getSegundoApellido(),
			$this->getSexo(),
			$this->getDireccion(),
			$this->getCorreoElectronico(),
            $this->getNumeroIdentidad(),
            $this->getFechaNacimiento(),
            $this->getTelefono(),
			$this->getFechaIngreso(),
        ];

    $rows = $conexion->query($sql, $valores);
    return $rows[0];

    }

	public function borrar($conexion){
        $sql = 'CALL SP_Eliminar_Cliente(%s, @mensaje, @error);';

        $valores = [$this->getIdEmpleado()];
        $rows = $conexion->query($sql, $valores);

        return $rows[0];
    }	
}
?>
