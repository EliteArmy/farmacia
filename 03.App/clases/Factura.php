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

	public function leerPorFecha($conexion){
		$sql = "SELECT * FROM VistaFacturas
		WHERE DATE(fecha_factura) >= DATE('%s')
		AND DATE(fecha_factura)<= DATE('%s');";
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
			SELECT * FROM VistaFacturas
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

  public function imprimirPDF($conexion, $idFactura){
    $sql = 'CALL SP_Obtener_Detalle_Factura(%s, @mensaje, @error)';
    $valores = [$this->getIdEmpleado()];
		// $resultado = $conexion->getResultadoQuery($sql, $valores);
		$rows = $conexion->query($sql, $valores);

    include_once('../plugin/fpdf/fpdf.php');

    // ======= Instacia del PDF =======
    $pdf = new FPDF('P','mm','A4');
    $pdf->AddPage();

    // ======= Encabezado =======
    $pdf->SetFont('helvetica','B', 12);
    $pdf->SetTextColor(135, 138, 134);

    $pdf->SetXY(18, 16);
    $pdf->Cell(0, 4, 'Farmacia Esperanza', 0, 1, '');

    $pdf->SetXY(18, 20);
    $pdf->Cell(0, 4, 'Col. Villa Olímpica', 0, 1, '');

    $pdf->SetXY(18, 24);
    $pdf->Cell(0, 4, 'Tel: (+504) 2222-0000', 0, 1 , '');

    $pdf->SetXY(18, 28);
    $pdf->Cell(0, 4, 'correo: correo@gmail.com', 0, 1 , '');

    $pdf->Image('../img/icon.png', 182, 12, 15, 15, 'png');

    $pdf->SetFont('Arial','B', 16);
    $pdf->SetTextColor(85, 84, 82);

    $pdf->SetXY(8, 40);
    $pdf->Cell(0, 8, 'DETALLES DE LA COMPRA', 0, 1, 'C'); // C, center

    // ======= Cuerpo del PDF =======
    $pdf->SetFont('Arial','B', 12);
    $pdf->SetX(18, 48);
    $pdf->SetTextColor(6, 48, 54);
    $pdf->SetFillColor(10, 105, 116);

    $pdf->Cell(25, 8, "Cantidad", 0, 0, 'C'); //cell(width, height, txt, border, ln, align)
    $pdf->Cell(75, 8, "Descripcion", 0, 0, 'C');
    $pdf->Cell(40, 8, "Precio Unidad", 0, 0, 'C');
    $pdf->Cell(35, 8, "Sub Total", 0, 0, 'C');
    $pdf->Ln();

    $pdf->SetDrawColor(70, 175, 40);
    $pdf->SetLineWidth(0.5);
    $pdf->Line(20, 56, 190, 56);

    // while ($row = $conexion->getFila($resultado)){
    //   $pdf->SetX(18);
    //   $pdf->Cell(25, 10, utf8_decode($row['cantidad']), 1, 0, 'C');
    //   $pdf->Cell(75, 10, utf8_decode($row['descripcion']), 1, 0, 'R');
    //   $pdf->Cell(40, 10, utf8_decode($row['precio_venta_unidad']), 1, 0, 'C');
    //   $pdf->Cell(35, 10, utf8_decode($row['total']), 1, 0, 'C');
    //   $pdf->Ln();
		// }

		foreach ($rows as $row) {
			if(isset($row['cantidad'])){
				$pdf->SetX(18);
				$pdf->Cell(25, 10, utf8_decode($row['cantidad']), 1, 0, 'C');
				$pdf->Cell(75, 10, utf8_decode($row['descripcion']), 1, 0, 'L');
				$pdf->Cell(40, 10, utf8_decode($row['precio_venta_unidad']), 1, 0, 'C');
				$pdf->Cell(35, 10, utf8_decode($row['total']), 1, 0, 'C');
				$pdf->Ln();
			}
		}

		if (count($rows) >= 1) {
			// ======= Resultados de la Factura =======
			if(isset($row['cantidad'])){

				$pdf->SetFont('Arial', '', 12);

				$pdf->SetX(111);
				$pdf->Cell(32, 10, "Sub-Total", 1, 0, 'C'); //cell(width, height, txt, border, ln, align)

				$pdf->SetX(143);
    		$pdf->Cell(50, 10, " Lps. ".number_format($rows[0]['subTotalFactura'], 2, '.', ','), 1, 0, 'R', false);

		    $pdf->Ln(); //Salto de Linea

		    $pdf->SetX(111);
		    $pdf->Cell(32, 10, "Impuestos", 1, 0, 'C'); //cell(width, height, txt, border, ln, align)

		    $pdf->SetX(143);
		    $pdf->Cell(50, 10, " Lps. ".number_format($rows[0]['totalImpuestoFactura'], 2 ,'.', ','), 1, 0, 'R', false);

		    $pdf->Ln(); //Salto de Linea

		    $pdf->SetX(111);
		    $pdf->Cell(32, 10, "Total", 1, 0,'C'); //cell(width, height, txt, border, ln, align)

    		$pdf->SetX(143);
    		$pdf->Cell(50, 10, " Lps. ".number_format($rows[0]['totalFactura'], 2, '.', ','), 1, 0, 'R', false);
			}
		}

	  // ======= Pie de Página del PDF =======
    $pdf->SetFont('Arial','B', 10);
    $pdf->SetXY(20, -35);
    $pdf->Write(5, "Encargado de Venta: ");

    $pdf->SetFont('Arial', '', 10);
    $pdf->Write(5, "Cajero");

    $pdf->SetFont('Arial', 'B', 10);
    $pdf->SetXY(120, -35);
    $pdf->Cell(35, 2, "Fecha de Emisión: ", 0, 0); //cell(width, height, txt, border, ln, align)

    $pdf->SetFont('Courier', '', 10);
    $pdf->Cell(40, 2, date('Y-m-d H:i:s'), 0, 0);

    $pdf->SetFont('Arial', 'B', 10);
    $pdf->SetXY(-25, -25); //x The value of the abscissa, y The value of the ordinate.
    $pdf->Cell(30, 2, $pdf->PageNo(), 0, 0); //cell(width, height, txt, border, ln, align)

    $pdf->Ln();

    $pdf->SetFont('Arial', '', 6);
    $pdf->SetXY(8, -25);
    $pdf->Cell(0, 4, utf8_decode("Farmacia Esperanza, 2018-2019"), 0, 0, 'C');

    // ======= Devuelve el PDF y Guarda el PDF =======
    //$pdf->Output('D','file2.pdf'); // Guarda en descargas
    $pdf->Output('F', '../facturas/factura'.$idFactura.'.pdf', true); // Guarda En el servidor

		return "facturas/factura".$idFactura.".pdf";
  }

  public function insertarFactura($conexion){
    $sql = 'CALL SP_Insertar_Factura(%d, %d, %d, %d, @mensaje, @error)';

    $valores = [
			$this->getIdEmpleado(),
			$this->getIdCliente(),
      $this->getIdFarmacia(),
      $this->getIdFormaPago()
    ];

		$rows = $conexion->query($sql, $valores);

    return $rows;
	}

}

?>


