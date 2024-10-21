<?php
include('sql.php');

$nombre = $_POST['nombre'];
$telefono = $_POST['telefono'];
$correo = $_POST['correo'];

insertarTrabajador($nombre, $telefono, $correo);

header("Location: ../gestionarEmpleados.php");
exit();
?>