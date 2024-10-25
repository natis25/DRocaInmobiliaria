<?php
include('sql.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $idCita = $_POST['idCita'];
    cancelarCita($idCita);
}

header("Location: ../Citas.php");
exit();
?>
