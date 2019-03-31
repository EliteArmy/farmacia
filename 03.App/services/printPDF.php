<?php
  // Send Headers
  //header('Content-type: application/pdf');
  header('Content-Disposition: attachment; filename="myPDF.pdf');
  header('Content-type: application/force-download');

  // Send Headers: Prevent Caching of File
  //header('Cache-Control: private');
  //header('Pragma: private');
  //header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');

  require '../plugin/fpdf/fpdf.php';
  include_once('../database/Conexion.php');

  $conexion = new Conexion();
  $resultado = $conexion->query('CALL SP_Obtener_Detalle_Factura(%d, @mensaje, @error)');
  
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
  $pdf->Cell(0, 7, 'DETALLES DE LA COMPRA', 0, 1, 'C'); // C, center

  // ======= Cuerpo del PDF =======
  $pdf->SetFont('Arial','B', 12);
  $pdf->SetX(18);  
  $pdf->SetTextColor(5, 47, 53);
  $pdf->SetFillColor(10, 105, 116);

  $pdf->Cell(35, 8, "Cantidad", 0, 0, 'C');
  $pdf->Cell(60, 8, "Descripcion", 0, 0, 'C');
  $pdf->Cell(35, 8, "Sub Total", 0, 0, 'C');
  $pdf->Cell(45, 8, "Precio Unitario", 0, 0, 'C');
  $pdf->Ln();
  
  $pdf->SetDrawColor(76, 174, 40);
  $pdf->SetLineWidth(1);
  $pdf->Line(20, 55, 190, 55);

  /*while($row = $conexion->getFila($resultado)){
    $fpdf-> SetX(18); 
    $fpdf->Cell(35,12,utf8_decode($row["idMaterial"]),1,0,'C');
    $fpdf->Cell(60,12,utf8_decode($row["nombre"]),1,0,'C');
    $fpdf->Cell(35,12,utf8_decode($row["cantidad"]),1,0,'C');
    $fpdf->Cell(45,12,number_format($row["precio"], 2, '.', ','),1,0,'C');

    //$fpdf->Cell(50,12,number_format($row["subtotal"], 2, '.', ','),1,0,'C');
    $fpdf->Ln();
  }*/

  // ======= Pie de Página del PDF =======


  //$pdf->Output('D','file2.pdf'); // Guarda en descargas
  $pdf->Output('F','../facturas/file2.pdf', true); // Guarda En el servidor
  
  $conexion->cerrar();
  $conexion = null;
  
  echo "facturas/file2.pdf"; 
?>