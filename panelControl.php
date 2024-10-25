<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Panel de Gestión</title>

  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: #f8f9fa;
      height: 100vh;
      display: grid;
      place-items: center;
    }

    .grid-container {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
      width: 90%;
      max-width: 800px;
    }

    .grid-container button {
      padding: 20px;
      border: none;
      border-radius: 8px;
      color: white;
      font-size: 16px;
      cursor: pointer;
      transition: transform 0.2s;
      width: 100%;
    }

    .grid-container button:hover {
      transform: scale(1.05);
    }

    .btn-citas {
      background-color: #007bff;
    }

    .btn-inmuebles {
      background-color: #28a745;
    }

    .btn-empleados {
      background-color: #dc3545;
    }

    .btn-inicio {
      background-color: #6c757d;
    }
  </style>
</head>

<body>
  <div class="grid-container">
    <button class="btn-citas" onclick="location.href='gestionarCitas.php'">Gestionar Citas</button>
    <button class="btn-inmuebles" onclick="location.href='gestionarInmuebles.php'">Gestionar Inmuebles</button>
    <button class="btn-empleados" onclick="location.href='gestionarEmpleados.php'">Gestionar Empleados</button>
    <button class="btn-inicio" onclick="location.href='index.php'">Volver a Inicio</button>
  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
