<!-- gestionarInmuebles.php -->
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion Inmuebles</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            margin: 50px;
        }
        .new-property-btn {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

    <?php include('header.php'); ?>

    <div class="table-container">
    <div class="text-right new-property-btn">
        <a href="registrarInmueble.php" class="btn btn-success">Nuevo Inmueble</a>
        <a href="panelControl.php" class="btn btn-primary">Panel de Control</a> <!-- Botón agregado -->
    </div>
    <h3 class="text-center">Lista de Inmuebles Disponibles</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID Inmueble</th>
                <th>Dirección</th>
                <th>Monto Solicitado</th>
                <th>Zona</th>
                <th>Operación</th>
                <th>Tipo</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php
            require_once 'Logica/sql.php';
            $viviendas = obtenerViviendasDisponibles();
            if (!empty($viviendas)) {
                foreach ($viviendas as $vivienda) {
                    echo "<tr>";
                    echo "<td>" . $vivienda['idVivienda'] . "</td>";
                    echo "<td>" . $vivienda['Direccion'] . "</td>";
                    echo "<td>" . $vivienda['MontoPedido'] . "</td>";
                    echo "<td>" . $vivienda['Zona'] . "</td>";
                    echo "<td>" . $vivienda['TipoOferta'] . "</td>";
                    echo "<td>" . $vivienda['TipoVivienda'] . "</td>";
                    echo "<td><a href='modificarInmueble.php?id=" . $vivienda['idVivienda'] . "' class='btn btn-warning'>Modificar</a></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='7' class='text-center'>No hay inmuebles disponibles</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
