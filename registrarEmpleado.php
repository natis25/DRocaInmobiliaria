<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión Inmuebles</title>

    <!-- Enlaces a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .form-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f8f9fa;
        }

        .card {
            width: 100%;
            max-width: 600px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        .form-panel {
            padding: 2rem;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <?php include('header.php'); ?>

    <div class="form-container">
        <div class="card">
            <div class="card-header text-center">
                <h3>Registro Empleado</h3>
            </div>
            <div class="form-panel">
                <form method="POST" action="Logica/setTrabajador.php">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingresa el nombre" required>
                    </div>

                    <div class="form-group">
                        <label for="telefono">Telefono</label>
                        <input type="number" class="form-control" id="telefono" name="telefono" placeholder="Ingresa el telefono" step="0.01" min="0" required>
                    </div>

                    <div class='form-group'>
                        <label for='correo-$index'>Correo:</label>
                        <input type='email' class='form-control' id='correo' name='correo' placeholder="Ingresa el correo" required>
                    </div>

                    <div class="button-group">
                        <a href="gestionarEmpleados.php" class="btn btn-secondary">Volver a Gestión</a>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
