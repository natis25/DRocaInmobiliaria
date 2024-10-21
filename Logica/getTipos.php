<?php
include('sql.php');

$tipos = obtenerTiposVivienda();
$result = [];

foreach ($tipos as $tipo) {
    $result[] = ['id' => $tipo['idTipoV'], 'text' => $tipo['Vivienda']];
}

echo json_encode($result);
?>
