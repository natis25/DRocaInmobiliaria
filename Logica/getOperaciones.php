<?php
include('sql.php');

$operaciones = obtenerTiposOferta();
$result = [];

foreach ($operaciones as $operacion) {
    $result[] = ['id' => $operacion['idTipoO'], 'text' => $operacion['Oferta']];
}

echo json_encode($result);
?>
