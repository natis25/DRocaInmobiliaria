<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Citas</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            margin: 50px;
        }
        .action-buttons {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }
        .top-buttons {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

    <?php include('header.php'); ?>

    <div class="table-container">
        <div class="top-buttons">
            <a href="panelControl.php" class="btn btn-primary">Panel de Control</a>
        </div>
        <h3 class="text-center">Lista de Citas Vigentes</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID Cita</th>
                    <th>Fecha Visita</th>
                    <th>Hora Inicio</th>
                    <th>Hora Fin</th>
                    <th>Cliente</th>
                    <th>Teléfono</th>
                    <th>Correo</th>
                    <th>Vivienda</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                require_once 'Logica/sql.php';
                $citas = obtenerCitasVigentes();
                if (!empty($citas)) {
                    foreach ($citas as $cita) {
                        echo "<tr>";
                        echo "<td>" . $cita['idCita'] . "</td>";
                        echo "<td>" . $cita['FechaVisita'] . "</td>";
                        echo "<td>" . $cita['HoraInicio'] . "</td>";
                        echo "<td>" . $cita['HoraFin'] . "</td>";
                        echo "<td>" . $cita['NombreCliente'] . "</td>";
                        echo "<td>" . $cita['TelefonoCliente'] . "</td>";
                        echo "<td>" . $cita['CorreoCliente'] . "</td>";
                        echo "<td>" . $cita['DireccionVivienda'] . "</td>";
                        echo "<td>" . $cita['Estado'] . "</td>";
                        echo "<td>";
                        echo "<div class='action-buttons'>";
                        echo "<a href='modificarCita.php?id=" . $cita['idCita'] . "' class='btn btn-warning'>Modificar</a>";
                        echo "<button class='btn btn-info'>Asignar agente</button>";
                        echo "<button class='btn btn-warning'>Ofertado</button>";
                        echo "<button class='btn btn-success'>Cerrar trato</button>";
                        echo "</div>";
                        echo "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='10' class='text-center'>No hay citas vigentes</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
