<?php
function validarPOST($campo){
  if(!isset($_POST[$campo]) || $_POST[$campo] == ''){
    return '';
  } else {
    return $_POST[$campo];
  }
}
?>
