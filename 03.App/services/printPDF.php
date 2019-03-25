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
  
  $pdf = new FPDF('P','mm','A4');
  $pdf->AddPage();
  $pdf->SetFont('helvetica','B',16);
  $pdf->Cell(40,10,'Hello World!!!');

  //$pdf->Output('D','file2.pdf'); // Guarda en descargas
  $pdf->Output('F','../facturas/file2.pdf'); // Guarda En el servidor
  echo "facturas/file2.pdf"; 
?>