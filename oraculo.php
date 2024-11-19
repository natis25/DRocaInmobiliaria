<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oráculo de Decisiones</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .iframe-container {
            position: relative;
            width: 100%;
            padding-top: 56.25%; /* 16:9 Aspect Ratio */
        }
        .iframe-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        .top-buttons {
            display: flex;
            justify-content: flex-end;
            margin: 20px;
        }
    </style>
</head>
<body>
    <?php include('header.php'); ?>

    <div class="container-fluid">
        <div class="top-buttons">
            <a href="panelControl.php" class="btn btn-primary">Panel de Control</a>
        </div>
        <div class="iframe-container">
            <iframe title="DSS" src="https://app.powerbi.com/reportEmbed?reportId=178c91f2-d149-4aca-a33e-371fafc235c6&autoAuth=true&ctid=eb087b19-797f-4343-9564-fed265389e9d" frameborder="0" allowFullScreen="true"></iframe>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>