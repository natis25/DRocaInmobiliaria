<style>
  .navbar {
    height: 100px;
    background-color: wheat;
  }

  .navbar .navbar-brand {
    display: flex;
    align-items: center;
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    height: 100%;
  }

  .navbar .navbar-brand img {
    max-height: 100%;
    height: auto;
    width: auto;
  }

  .navbar-nav .nav-link {
    font-size: 20px;
    padding: 20px;
    margin-right: 20px;
  }
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-white">
  <a class="navbar-brand" href="index.php">
    <img src="images/Logo.png" class="d-inline-block align-top" alt="Logo">
  </a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Inicio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="inmuebles.php">Inmuebles</a>
        <li class="nav-item">
          <a class="nav-link" href="citas.php">Cancelar Cita</a>
        </li>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contacto.php">Contacto</a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="panelControl.php">¿Eres empleado?</a>
      </li>
    </ul>
  </div>
</nav>
