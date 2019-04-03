<?php
class Cotizacion {

  private $idEmpleado;
  private $idTemporal;
  private $idCliente;
  private $idFarmacia;
  private $idLote;
  private $cantidad;

	public function __construct(
      $idEmpleado = null,
      $idCliente = null,
      $idFarmacia = null,
      $idLote = null,
      $cantidad = null
	){
      $this->idEmpleado = $idEmpleado;
      $this->idCliente = $idCliente;
      $this->idFarmacia = $idFarmacia;
      $this->$idLote = $idLote;
      $this->$cantidad = $cantidad;
	}

	public function __toString(){
		$var = "Factura{"
		."idEmpleado: ".$this->idEmpleado." , "
    ."idCliente: ".$this->idCliente." , "
		."idFarmacia: ".$this->idFarmacia." , "
		."idLote: ".$this->idLote." , "
		."cantidad: ".$this->cantidad;
		return $var."}";
	}


  public function getIdTemporal(){
		return $this->idTemporal;
	}
	public function setIdTemporal($idTemporal){
		$this->idTemporal = $idTemporal;
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

	public function getIdFarmacia(){
		return $this->idFarmacia;
	}
	public function setIdFarmacia($idFarmacia){
		$this->idFarmacia = $idFarmacia;
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


  public function insertarProducto($conexion){
		$sql = 'CALL SP_Insertar_Detalle_Cotizacion(%d, %d, %d, @mensaje, @error)';
		$valores = [
			$this->getIdEmpleado(),
			$this->getCantidad(),
			$this->getIdLote()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

  public function eliminarProducto($conexion){
		$sql = 'CALL SP_Eliminar_Detalle_Cotizacion(%d, @mensaje, @error)';
    $valores = [
			$this->getIdTemporal()
    ];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

	public function cancelarCotizacion($conexion){
    $sql = 'CALL SP_Eliminar_Cotizacion(%d, @mensaje, @error)';
    $valores = [$this->getIdEmpleado()];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }
  
  public function insertarCotizacion($conexion){
    $sql = 'CALL SP_Insertar_Cotizacion(%d, %d, %d, @mensaje, @error)';

    $valores = [
			$this->getIdEmpleado(),
			$this->getIdCliente(),
      $this->getIdFarmacia()
    ];

		$rows = $conexion->query($sql, $valores);

    return $rows;
	}

  public function imprimirPDF($conexion, $idCotizacion, $nombreEmpleado, $nombreCliente, $fechaHora){
    $sql = 'CALL SP_Obtener_Detalle_Cotizacion(%s, @mensaje, @error)';
    $valores = [$this->getIdEmpleado()];
    $rows = $conexion->query($sql, $valores);

    $date = date('d-m-Y'); // Forma temporal de una fecha de Emisión

    // // Current date and time
    // $datetime = date("d-m-Y H:i:s");
    // // Convert datetime to Unix timestamp
    // $timestamp = strtotime($datetime);
    // // Subtract time from datetime
    // $time = $timestamp - (6 * 60 * 60); // Resta la Hora de la Base
    // // Date and time after subtraction
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
    $pdf->Cell(0, 8, 'Farmacia Esperanza', 0, 1, 'C'); //cell(width, height, txt, border, ln, align)

    $pdf->SetFont('helvetica','B', 12);
    $pdf->SetTextColor(135, 138, 134);
    $pdf->Cell(0, 5, 'Col. Villa Olímpica, Tegucigalpa, M.D.C, Honduras', 0, 1, 'C');
    $pdf->Cell(0, 5, 'RTN: 08011980123456', 0, 1, 'C');
    $pdf->Cell(0, 5, 'Factura No Valida, Solo Cotización', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Fecha Limite Emisión: '.$date.'', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Teléfono: (+504) 2222-0000', 0, 1 , 'C');
    $pdf->Cell(0, 5, 'Correo: farmacia_esperanza@gmail.com', 0, 1 , 'C');

    $pdf->Ln(); //Salto de Linea

    $pdf->SetX(18, 48);
    $pdf->SetFont('Arial','B', 12);
    $pdf->Cell(44, 5, 'Encargado de Venta: ', 0, 0 , 'L'); //cell(width, height, txt, border, ln, align)

    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(38, 5, $nombreEmpleado, 0, 0, 'L');

    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(40, 5, "Fecha de Emisión: ", 0, 0, 'L'); 

    $pdf->SetFont('Courier', '', 12);
    $pdf->Cell(54, 5, $datetime, 0, 1, 'L');

    // ======= Cuerpo del PDF =======
    $pdf->SetFont('Arial','B', 16);
    $pdf->SetTextColor(85, 84, 82);
    $pdf->Ln(); //Salto de Linea
    $pdf->Cell(0, 8, 'DETALLES DE LA COTIZACIÓN', 0, 1, 'C'); // C, center

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
    		$pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['subTotalCotizacion'], 2, '.', ','), 0, 1, 'R', false);

		    $pdf->SetX(118);
		    $pdf->Cell(28, 8, "Impuestos:", 0, 0, 'R'); //cell(width, height, txt, border, ln, align)

		    $pdf->SetX(146);
		    $pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['totalImpuestoCotizacion'], 2 ,'.', ','), 0, 1, 'R', false);

        $pdf->SetX(118);
		    $pdf->Cell(28, 8, "Descuentos:", 0, 0, 'R'); //cell(width, height, txt, border, ln, align)

		    $pdf->SetX(146);
		    $pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['totalDescuentoCotizacion'], 2 ,'.', ','), 0, 1, 'R', false);


        $pdf->SetFont('Arial', 'B', 12);

		    $pdf->SetX(118);
		    $pdf->Cell(28, 8, "Total:", 0, 0,'R'); //cell(width, height, txt, border, ln, align)

    		$pdf->SetX(146);
    		$pdf->Cell(47, 8, " Lps. ".number_format($rows[0]['totalCotizacion'], 2, '.', ','), 0, 1, 'R', false);
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
    $pdf->Output('F', '../facturas/cotizacion'.$idCotizacion.'.pdf', true); // Guarda En el servidor
    //$pdf->Output('F', '../facturas/factura.pdf', true); // Guarda En el servidor

		return "facturas/cotizacion".$idCotizacion.".pdf";
    //return "facturas/factura.pdf";
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

}

?>


