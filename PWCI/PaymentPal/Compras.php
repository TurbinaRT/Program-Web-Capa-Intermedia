<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compra</title>

    <link rel="stylesheet" href="Compras.css">
    <link rel="stylesheet" href="../css/footer_compras.css">
    <link rel="stylesheet" href="../css/nav_bar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7179a14424.js" crossorigin="anonymous"></script>
</head>
<body background="./fondoJC.png">

  <!-- NAV BAR -->

  <nav style="background-color: #293462;" class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="../Img/BORDE.png" id="logo"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Categorías
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Categoría 1</a></li>
                  <li><a class="dropdown-item" href="#">Categoría 2</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Acerca de</a></li>
                </ul>
              </li>
          <li class="nav-item">
            <a class="nav-link" href="../Ventas/Ventas.html">Ventas</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Cursos
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="../Principal/Pantalla/PagInicio.html">Biblioteca de cursos</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="../Cursos/Cursos.html">Nuevo curso</a></li>
              <li><a class="dropdown-item" href="../Cursos/CursosEdit.html">Modificar curso</a></li>
              <li><a class="dropdown-item" href="../Cursos/CursosBaja.html">Eliminar curso</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="../MisCursos/Pagina/MisCursos.html">Mis cursos</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link">Contáctanos</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <img src="../Img/no_pic.png" class="perfil">
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="../MisCursos/Pagina/MisCursos.html">Mis cursos</a></li>
              <li><a class="dropdown-item" href="../Editar perfil/Pagina/EditarPerfil.html">Mi perfil</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Search">
          <button class="btn btn-info" type="submit">Buscar</button>
        </form>
      </div>
    </div>
  </nav>

      <!-- CONTENIDO -->
      <div class="compra">
        <h2>Compra</h2>
      </div>

      <div class="container">

        <div class="datos">
          <label>Curso:</label><br>
        </div>
        <div class="linea"></div>

        <div class="datos">
          <label>Fecha:</label><br>
        </div>
        <div class="linea"></div>

        <div class="datos">
          <label>Subtotal:</label><br>
        </div>
        <div class="linea"></div>

        <div class="datos">
          <label>Total:</label><br>
        </div>
        <div class="linea"></div>
        <div class="boton">
          <!-- Button trigger modal -->
<button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Aceptar
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Confirmar compra</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Seleccione un método de pago
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">PayPal</a></li>
            <li><a class="dropdown-item" href="#">Tarjeta de crédito</a></li>
            <li><a class="dropdown-item" href="#">tarjeta de débito</a></li>
          </ul>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-outline-primary">Confirmar</button>
      </div>
    </div>
  </div>
</div>
        </div>
      </div>

      <!-- FOOTER -->

      <footer class="pie-pag">

        <div class="grupo-1">
                <div class="box">
                    <figure>
                        <!--Aquí iría nuestro logotipo-->
                        <a href="">
                            <img class="HumonP" src="../Img/BORDE.png" alt="Jelly Code">
                        </a>
                    </figure>
                </div>
    
                <div class="box">
                    <h2>SOBRE NOSOTROS</h2>
                    <p>Somos una plataforma en línea que se dedica a proporcionar cursos de alta calidad y 
                        enriquecedores a cualquier persona que busque aprender nuevas habilidades y conocimientos.
                        Nos enorgullece ofrecer una amplia gama de cursos en línea, desde cursos de programación y
                        diseño hasta cursos de idiomas y desarrollo personal.
                    </p>
    
                </div>
    
                
                <div class="box">
                    <h2>SÍGUENOS</h2>
                    <div class="red-social">
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-instagram"></a>
                        <a href="#" class="fa fa-twitter"></a>
                        <a href="#" class="fa fa-youtube"></a>
                    </div>
                    
                </div>
                
                        
        </div> <!--Cierre grupo 1-->
    
            <div class="grupo-2">
                <small>&copy; 2023 <b>Jelly Code</b> - Todos los derechos reservados -</small>
    
            </div>
    
      </footer>

<script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>