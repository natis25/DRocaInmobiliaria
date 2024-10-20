<?php
require_once 'sql.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $idInmueble = $_POST['idInmueble'];
    $direccion = $_POST['direccion'];
    $monto = $_POST['monto'];
    $zona = $_POST['zona'];
    $operacion = $_POST['operacion'];
    $tipo = $_POST['tipo'];

    actualizarVivienda($idInmueble, $direccion, $monto, $zona, $tipo, $operacion);

    header("Location: ../gestionarInmuebles.php");
    exit();
}

function actualizarVivienda($idInmueble, $direccion, $monto, $zona, $tipoVivienda, $tipoOferta) {
    $conexion = Conectarse();
    if (!$conexion) {
        die("Error de conexión a la base de datos");
    }

    $sql = "UPDATE Vivienda 
    SET Direccion = ?, MontoPedido = ?, Zonas_idZona = ?, TipoVivienda_idTipoV = ?, TipoOferta_idTipoO = ?
    WHERE idVivienda = ?";

$stmt = $conexion->prepare($sql);
$stmt->bind_param("sdiiii", $direccion, $monto, $zona, $tipoVivienda, $tipoOferta, $idInmueble);

if ($stmt->execute()) {
echo "Inmueble actualizado correctamente";
} else {
echo "Error al actualizar el inmueble: " . $stmt->error;
}

$stmt->close();
mysqli_close($conexion);
}
?>

