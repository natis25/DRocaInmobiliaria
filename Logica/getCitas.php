<?php
include('sql.php');

if (isset($_GET['telefono'])) {
    $telefono = $_GET['telefono'];
    $citas = obtenerCitasPorTelefono($telefono);
    echo json_encode($citas);
}
?>
