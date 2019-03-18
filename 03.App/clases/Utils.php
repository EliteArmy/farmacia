<?php
function validarPOST($campo){
  if(!isset($_POST[$campo]) || $_POST[$campo] == ''){
    return 'NULL';
  } else {
    return $_POST[$campo];
  }
}
?>
