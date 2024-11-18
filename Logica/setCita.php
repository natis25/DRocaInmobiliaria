<?php
include('sql.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $telefono = $_POST['telefono'];
    $correo = $_POST['correo'];
    
    $fechaVisita = $_POST['fecha'];
    $horaInicio = $_POST['hora_inicio'];
    $idVivienda = $_POST['idVivienda'];

    $horaFin = date("H:i", strtotime($horaInicio . " +1 hour"));

    $idCliente = insertarCliente($nombre, $telefono, $correo);

    if ($idCliente) {
        insertarCita($fechaVisita, $horaInicio, $horaFin, $idVivienda, $idCliente, 1);
    } else {
        echo "Error al registrar el cliente.";
    }
}
header("Location: ../inmuebles.php");
exit();
?>