<?php
include('sql.php');

$zonas = obtenerZonas();
$result = [];

foreach ($zonas as $zona) {
    $result[] = ['id' => $zona['idZona'], 'text' => $zona['Zona']];
}

echo json_encode($result);
?>
