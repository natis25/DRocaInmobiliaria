<?php
require_once 'sql.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $idTrabajador = $_POST['idTrabajador'];
    $nombre = $_POST['nombre'];
    $telefono = $_POST['telefono'];
    $correo = $_POST['correo'];
    actualizarTrabajador($idTrabajador, $nombre, $telefono, $correo);

    header("Location: ../gestionarEmpleados.php");
    exit();
}

function actualizarTrabajador($idTrabajador, $nombre, $telefono, $correo) {
    $conexion = Conectarse();
    if (!$conexion) {
        die("Error de conexión a la base de datos");
    }

    $sql = "UPDATE Trabajador 
            SET Nombre = ?, Telefono = ?, Correo = ?
            WHERE idTrabajador = ?";

    $stmt = $conexion->prepare($sql);

    // Cambia el tipo de la cadena a 'sssi' para incluir el idTrabajador como entero
    $stmt->bind_param("sssi", $nombre, $telefono, $correo, $idTrabajador);

    if ($stmt->execute()) {
        echo "Trabajador actualizado correctamente";
    } else {
        echo "Error al actualizar Trabajador: " . $stmt->error;
    }

    $stmt->close();
    mysqli_close($conexion);
}
?>
