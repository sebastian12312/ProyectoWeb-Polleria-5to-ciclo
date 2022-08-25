<%-- 
    Document   : register
    Created on : 8 oct. 2021, 14:58:17
    Author     : sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/inicio.css">
    </head>
    <body>
        
        <nav class="navbar navbar-expand-sm navbar-light bg-nav sticky-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="img/index/MILANO.png" alt="" width="225">
                </a>

                <button class="navbar-toggler" 
                        type="button" 
                        data-bs-toggle="collapse" 
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto h5">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="catalogo.jsp">Productos</a></li>
                        <li class="nav-item"><a class="nav-link" href="contacto.jsp">Contacto</a></li>
                        <li class="nav-item"><a class="nav-link" href="nosotros.jsp">Sobre nosotros</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<br><br><br><br>
        <div class="container mt-5" >
            <h1>Registrate</h1>
            <form class="row g-3" action="../Usuario1" method="post">
                <div class="col-md-6">
                    <label for="firstName" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="firstName" required name="nombre" placeholder="Nombre...">
                </div>
                <div class="col-md-6">
                    <label for="lastName" class="form-label">Apellido</label>
                    <input type="text" class="form-control" id="lastName" required name="apellido" placeholder="Apellido...">
                </div>
                <div class="col-md-8">
                    <label for="emailInfo" class="form-label">E-mail</label>
                    <input type="email" class="form-control" id="emailInfo" required name="correo" placeholder="Email...">
                </div>
                 <div class="col-md-4">
                    <label for="phoneNumber" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" name="pass" placeholder="*****">
                </div>
                <div class="col-md-6">
                    <label for="phoneNumber" class="form-label">Telefono</label>
                    <input type="text" class="form-control" name="telefono" placeholder="Numero....">
                </div>
               
                <div class="col-md-6">
                    <label for="phoneNumber" class="form-label">Genero</label>
                    <select type="text" class="form-control" name="genero">
                        <option value="MASCULINO">Masculino</option>
                        <option value="FEMENINO">Femenino</option>
                        <option value="NO ESPECIFICO">No especifico</option>
                    </select>
                </div>

                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" >Registrar</button>
                </div>
            </form>
        </div>
        <br><br><br><br><br><br><br><br>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

        <footer class="footer bg-dark">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>Compañia</h4>
                        <ul>
                            <li><a href="#">Inicio</a></li>
                            <li><a href="#">Productos</a></li>
                            <li><a href="#">Contacto</a></li>
                            <li><a href="#">Sobre nosotros</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Integrantes</h4>
                        <ul>
                            <li><a href="#">Sebastian barrientos</a></li>
                            <li><a href="#">Arteaga Ayala Bradd</a></li>
                            <li><a href="#">Jordy Anthony Sánchez</a></li>
                            <li><a href="#"> Lagos Yamunaque Kenyi</a></li>
                            <li><a href="#">Blas Palomino, Sebastian</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Tienda Online</h4>
                        <ul>
                            <li><a href="#">Pollos a la brasa</a></li>
                            <li><a href="#">Parrillas Milano</a></li>
                            <li><a href="#">Ensaladas</a></li>
                            <li><a href="#">Bebidas</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Siguenos en:</h4>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        
    </body>
</html>
