<?php
class Factura {

	private $idFactura;
	private $fechaHora;
	private $costeTotal;
	private $observacion;
	private $idEmpleado;
	private $idCliente;
	private $idFormaPago;
	private $idFarmacia;
	private $fechaInicio;
  private $fechaFin;
  private $idLote;
	private $cantidad;
	private $nombreCliente;
	private $rtnCliente;

	public function __construct(
		$idFactura = null,
		$fechaHora = null,
		$costeTotal = null,
		$observacion = null,
		$idEmpleado = null,
		$idCliente = null,
		$idFormaPago = null,
    $idFarmacia = null,
    $fechaInicio = null,
    $fechaFin = null,
    $idLote = null,
    $cantidad = null
	){
		$this->idFactura = $idFactura;
		$this->fechaHora = $fechaHora;
		$this->costeTotal = $costeTotal;
		$this->observacion = $observacion;
		$this->idEmpleado = $idEmpleado;
		$this->idCliente = $idCliente;
		$this->idFormaPago = $idFormaPago;
    $this->idFarmacia = $idFarmacia;
    $this->$fechaInicio = $fechaInicio;
    $this->$fechaFin = $fechaFin;
    $this->$idLote = $idLote;
    $this->$cantidad = $cantidad;
	}

	public function __toString(){
		$var = "Factura{"
		."idFactura: ".$this->idFactura." , "
		."fechaHora: ".$this->fechaHora." , "
		."costeTotal: ".$this->costeTotal." , "
		."observacion: ".$this->observacion." , "
		."idEmpleado: ".$this->idEmpleado." , "
		."idCliente: ".$this->idCliente." , "
		."idFormaPago: ".$this->idFormaPago." , "
		."idFarmacia: ".$this->idFarmacia;
		return $var."}";
	}

	public function getIdFactura(){
		return $this->idFactura;
	}
	public function setIdFactura($idFactura){
		$this->idFactura = $idFactura;
  }

	public function getFechaHora(){
		return $this->fechaHora;
	}
	public function setFechaHora($fechaHora){
		$this->fechaHora = $fechaHora;
  }

	public function getCosteTotal(){
		return $this->costeTotal;
	}
	public function setCosteTotal($costeTotal){
		$this->costeTotal = $costeTotal;
  }

	public function getObservacion(){
		return $this->observacion;
	}
	public function setObservacion($observacion){
		$this->observacion = $observacion;
  }

	public function getIdEmpleado(){
		return $this->idEmpleado;
	}
	public function setIdEmpleado($idEmpleado){
		$this->idEmpleado = $idEmpleado;
  }

	public function getIdCliente(){
		return $this->idCliente;
	}
	public function setIdCliente($idCliente){
		$this->idCliente = $idCliente;
  }

	public function getIdFormaPago(){
		return $this->idFormaPago;
	}
	public function setIdFormaPago($idFormaPago){
		$this->idFormaPago = $idFormaPago;
  }

	public function getIdFarmacia(){
		return $this->idFarmacia;
	}
	public function setIdFarmacia($idFarmacia){
		$this->idFarmacia = $idFarmacia;
  }

	public function getFechaInicio(){
		return $this->fechaInicio;
	}
	public function setFechaInicio($fechaInicio){
		$this->fechaInicio = $fechaInicio;
  }

	public function getFechaFin(){
		return $this->fechaFin;
	}
	public function setFechaFin($fechaFin){
		$this->fechaFin = $fechaFin;
	}

	public function getCantidad(){
		return $this->cantidad;
	}

	public function setCantidad($cantidad){
		$this->cantidad = $cantidad;
	}

	public function getIdLote(){
		return $this->idLote;
	}

	public function setIdLote($idLote){
		$this->idLote = $idLote;
	}

	public function getNombreCliente(){
		return $this->nombreCliente;
	}

	public function setNombreCliente($nombreCliente){
		$this->nombreCliente = $nombreCliente;
	}

	public function getRtnCliente(){
		return $this->rtnCliente;
	}

	public function setRtnCliente($rtnCliente){
		$this->rtnCliente = $rtnCliente;
	}

  public function leerPorFecha($conexion){
      $sql = "
        CALL SP_Obtener_Factura_Fecha(DATE('%s'), DATE('%s'), @mensaje, @error);
      ";
      $valores = [
        $this->getFechaInicio(),
        $this->getFechaFin()
      ];
      $rows = $conexion->query($sql, $valores);
      return $rows;
  }

	public function leerPorId($conexion){
		$sql = '
			SELECT vista.*, totales.total FROM VistaDetalleFactura vista
			INNER JOIN (
				SELECT vdf.id_factura,
							ROUND(SUM(vdf.precio_total), 2) as total
				FROM VistaDetalleFactura vdf
				GROUP BY vdf.id_factura
			) totales
			ON vista.id_factura = totales.id_factura
			WHERE vista.id_factura = %d
		';
		$valores = [$this->getIdFactura()];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}

  public static function leer($conexion){
		$sql = '
			SELECT * FROM VistaFacturas LIMIT 100;
		';
		$rows = $conexion->query($sql);
		return $rows;
  }

	public function crear($conexion){

  }
	public function actualizar($conexion){
	}
	public function borrar($conexion){
  }

  public function leerClientePorId($conexion){
	  $sql = '
			SELECT * FROM persona
			WHERE numero_identidad = %s
    ';

		$valores = [$this->getIdCliente()];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
  }

  public function insertarProducto($conexion){
		$sql = 'CALL SP_Insertar_Detalle_Factura(%d, %d, %d, @mensaje, @error)';
		$valores = [
			$this->getIdEmpleado(),
			$this->getCantidad(),
			$this->getIdLote()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

  public function eliminarProducto($conexion){
		$sql = 'CALL SP_Eliminar_Detalle_Factura(%d, @mensaje, @error)';
    $valores = [
			$this->getIdFactura()
    ];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

	public function cancelarFactura($conexion){
    $sql = 'CALL SP_Eliminar_Factura(%d, @mensaje, @error)';
    $valores = [$this->getIdEmpleado()];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}

	public function obtenerDetalleFactura($conexion){
    $sql = 'CALL SP_Obtener_Detalle_Factura(%d, @mensaje, @error)';
    $valores = [$this->getIdEmpleado()];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

  public function insertarFactura($conexion){
    $sql = "CALL SP_Insertar_Factura(%s, %s, %s, %s, '%s', '%s', @mensaje, @error)";
    $valores = [
				$this->getIdEmpleado(),
				$this->getIdCliente(),
				$this->getIdFarmacia(),
				$this->getIdFormaPago(),
				$this->getNombreCliente(),
				$this->getRtnCliente()
    ];

		$rows = $conexion->query($sql, $valores);
    return $rows;
	}

	public function test($conexion){
    $sql = "CALL SP_Test1('%s')";
    $valores = [$this->getRtnCliente()];

		$rows = $conexion->query($sql, $valores);
    return $rows;
	}

	public function imprimirPDF($conexion,
															$idFactura, 
															$nombreEmpleado, 
															$nombreCliente, 
															$formaPago,
															$fechaHora,
															$nombreFarmacia, 
															$propietario, 
															$rtn,
															$direccion, 
															$correoElectronico,
															$fundada,
															$telefono,
															$cai,
															$fechaMaximaEmision,
															$rangoAutorizadoInicial,
															$rangoAutorizadoFinal,
															$rangoAutorizadoActual){
    $sql = 'CALL SP_Obtener_Detalle_Factura(%s, @mensaje, @error)';
    $valores = [$this->getIdEmpleado()];
		// $resultado = $conexion->getResultadoQuery($sql, $valores);
    $rows = $conexion->query($sql, $valores);

    // Current date and time
    // $datetime = date("d-m-Y H:i:s");
    // Convert datetime to Unix timestamp
    // $timestamp = strtotime($datetime);
    // Subtract time from datetime
    // $time = $timestamp - (6 * 60 * 60); // Resta la Hora de la Base
    // Date and time after subtraction
		// $datetime = date("d-m-Y H:i:s", $time);

		$date = date('d-m-Y',strtotime($fechaHora));
		$datetime = date("d-m-Y H:i:s", strtotime($fechaHora));

    include_once('../plugin/fpdf/fpdf.php');

    // ======= Instacia del PDF =======
    $pdf = new FPDF('P','mm','A4');
    $pdf->AddPage();

    // ======= Encabezado del PDF =======
    $pdf->Image('../img/icon.png', 182, 12, 15, 15, 'png'); // Logo de la Factura

    $pdf->SetFont('helvetica','B', 18);
    $pdf->SetTextColor(31, 154, 215); // Color Azul
    $pdf->Cell(0, 8, ''.$nombreFarmacia.'', 0, 1, 'C'); //cell(width, height, txt, border, ln, align)

    $pdf->SetFont('helvetica','B', 12);
    $pdf->SetTextColor(135, 138, 134);
    $pdf->Cell(0, 5, ''.$direccion.'', 0, 1, 'C');
    $pdf->Cell(0, 5, 'RTN: '.$rtn.'', 0, 1, 'C');
    $pdf->Cell(0, 5, 'Factura Original: 000-000-00-'.$idFactura.'', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'C.A.I.: '.$cai.'', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Rango Autorizado: '.$rangoAutorizadoInicial. ' a '.$rangoAutorizadoFinal.'', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Fecha Limite Emisión: '.$date.'', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Teléfono: (+504) '.$telefono.'', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Correo: '.$correoElectronico.'', 0, 1 , 'C');

    $pdf->Ln(); //Salto de Linea

    $pdf->SetX(18, 48);

    // ======= Imprime el nombre del empleado en la factura
    $pdf->SetFont('Arial','B', 12);
    $pdf->Cell(44, 5, 'Encargado de Venta: ', 0, 0 , 'L'); //cell(width, height, txt, border, ln, align)

    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(38, 5, $nombreEmpleado, 0, 0, 'L');

    // ======= Imprime la Fecha en la factura
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(40, 5, "Fecha de Emisión: ", 0, 0, 'L');

    $pdf->SetFont('Courier', '', 12);
    $pdf->Cell(54, 5, $datetime, 0, 1, 'L');

    $pdf->SetX(18, 48);

    // ======= Imprime el nombre del cliente en la factura
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(18, 5, "Cliente: ", 0, 0, 'L');

    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(64, 5, $nombreCliente, 0, 0, 'L');

    // ======= Imprime el Pago en la factura
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(30, 5, "Forma Pago: ", 0, 0, 'L');

    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(52, 5, $formaPago, 0, 1, 'L');

    // ======= Cuerpo del PDF =======
    $pdf->SetFont('Arial','B', 16);
    $pdf->SetTextColor(85, 84, 82);
    $pdf->Ln(); //Salto de Linea
    $pdf->Cell(0, 8, 'DETALLES DE LA COMPRA', 0, 1, 'C'); // C, center

    $pdf->SetFont('Arial', 'B', 12);
    $pdf->SetX(18, 48);
    $pdf->SetTextColor(255, 255, 255); // Color Blanco
    $pdf->SetFillColor(31, 154, 215); // Color Azul

    $pdf->SetDrawColor(130, 130, 130); // Color del borde de las celdas
    $pdf->SetLineWidth(0.5);
    //$pdf->Line(20, 56, 190, 56); // Dibuja una Linea

    $pdf->Cell(20, 8, "Cant.", 1, 0, 'C', true); //cell(width, height, txt, border, ln, align, fill)
    $pdf->Cell(80, 8, "Descripción", 1, 0, 'C', true);
    $pdf->Cell(35, 8, "Precio Unidad", 1, 0, 'C', true);
    $pdf->Cell(40, 8, "Sub Total", 1, 1, 'C', true);

    $pdf->SetFont('Arial', '', 12); // Quitar el Bold de la lista de Productos
    $pdf->SetTextColor(6, 48, 54); // Volver a Dejar el color del texto como antes

		foreach ($rows as $row) {
			if(isset($row['cantidad'])){
				$pdf->SetX(18);
				$pdf->Cell(20, 10, utf8_decode($row['cantidad']), 1, 0, 'C'); //cell(width, height, txt, border, ln, align, fill)
				$pdf->Cell(80, 10, utf8_decode($row['descripcion']), 1, 0, 'L');
				$pdf->Cell(35, 10, utf8_decode($row['precio_venta_unidad']), 1, 0, 'C');
				$pdf->Cell(40, 10, utf8_decode($row['total']), 1, 1, 'C');
			}
    }

    // ======= Resultados de la Factura =======
		if (count($rows) >= 1) {
			if(isset($row['cantidad'])){

				$pdf->SetFont('Arial', '', 12);

				$pdf->SetX(118);
				$pdf->Cell(28, 8, "Sub Total:", 0, 0, 'R'); //cell(width, height, txt, border, ln, align)

				$pdf->SetX(146);
    		$pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['subTotalFactura'], 2, '.', ','), 0, 1, 'R', false);

		    $pdf->SetX(118);
        $pdf->Cell(28, 8, "Descuento:", 0, 0, 'R'); //cell(width, height, txt, border, ln, align)

        $pdf->SetX(146);
    		$pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['totalDescuentoFactura'], 2, '.', ','), 0, 1, 'R', false);

		    $pdf->SetX(118);
		    $pdf->Cell(28, 8, "Impuestos:", 0, 0, 'R'); //cell(width, height, txt, border, ln, align)

		    $pdf->SetX(146);
		    $pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['totalImpuestoFactura'], 2 ,'.', ','), 0, 1, 'R', false);

        $pdf->SetFont('Arial', 'B', 12); // Muestra el Total en negritas

		    $pdf->SetX(118);
		    $pdf->Cell(28, 8, "Total:", 0, 0,'R'); //cell(width, height, txt, border, ln, align)

    		$pdf->SetX(146);
    		$pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['totalFactura'], 2, '.', ','), 0, 1, 'R', false);
			}
		}

    // ======= Pie de Página del PDF =======
    /*
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->SetXY(-25, -25); //x The value of the abscissa, y The value of the ordinate.
    $pdf->Cell(30, 2, $pdf->PageNo(), 0, 0); //cell(width, height, txt, border, ln, align)

    $pdf->Ln();

    $pdf->SetFont('Arial', '', 6);
    $pdf->SetXY(8, -25);
    $pdf->Cell(0, 4, utf8_decode("Farmacia Esperanza, 2018-2019"), 0, 0, 'C');

    */
    // ======= Devuelve el PDF y Guarda el PDF =======
    //$pdf->Output('D','file2.pdf'); // Guarda en descargas
    $pdf->Output('F', '../facturas/factura'.$idFactura.'.pdf', true); // Guarda En el servidor
    //$pdf->Output('F', '../facturas/factura.pdf', true); // Guarda En el servidor

	  return "facturas/factura".$idFactura.".pdf";
    //return "facturas/factura.pdf";
  }

}

?>


