<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion Trabajadores</title>
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
        <a href="registrarEmpleado.php" class="btn btn-success">Agregar Trabajador</a>
        <a href="panelControl.php" class="btn btn-primary">Panel de Control</a> <!-- Botón agregado -->
    </div>
    <h3 class="text-center">Lista de Trabajadores</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID Trabajador</th>
                <th>Nombre</th>
                <th>Telefono</th>
                <th>Correo</th>
            </tr>
        </thead>
        <tbody>
            <?php
            require_once 'Logica/sql.php';
            $trabajadores = obtenerTabajadores();
            if (!empty($trabajadores)) {
                foreach ($trabajadores as $trabajador) {
                    echo "<tr>";
                    echo "<td>" . $trabajador['idTrabajador'] . "</td>";
                    echo "<td>" . $trabajador['Nombre'] . "</td>"; // Cambiado a 'Nombre'
                    echo "<td>" . $trabajador['Telefono'] . "</td>"; // Cambiado a 'Telefono'
                    echo "<td>" . $trabajador['Correo'] . "</td>"; // Cambiado a 'Correo'
                    echo "<td><a href='modificarEmpleado.php?id=" . $trabajador['idTrabajador'] . "' class='btn btn-warning'>Modificar</a></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='7' class='text-center'>No hay Trabajadores registrados</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
