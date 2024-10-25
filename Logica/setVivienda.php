<?php
include('sql.php');

$direccion = $_POST['direccion'];
$montoPedido = $_POST['monto'];
$zona = $_POST['zona'];
$tipoVivienda = $_POST['tipo'];
$tipoOferta = $_POST['operacion'];

insertarVivienda($direccion, $montoPedido, $zona, $tipoVivienda, $tipoOferta);

header("Location: ../gestionarInmuebles.php");
exit();
?>