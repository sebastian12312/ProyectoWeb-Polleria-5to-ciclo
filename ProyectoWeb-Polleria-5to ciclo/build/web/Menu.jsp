<%-- 
    Document   : login
    Created on : 8 oct. 2021, 14:54:26
    Author     : sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "Productos.ProductosMenu"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/inicio.css">
        <link rel="stylesheet" href="css/productos.css">
        <link rel="stylesheet" href="css/Dashboard.css">
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
                        <li class="nav-item"><a class="nav-link" href="ServLetListaClientes1?op=listar">Sobre nosotros</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container-fluid">
            <div class="row">
                 <div class="barra-lateral col-12 col-sm-auto">
                    <nav class="menu d-flex d-sm-block justify-content-center flex-wrap">
                        <a href="#" ><i id="centr"  class="fas fa-user-circle user"></i></a>
                        <a>Usuario: Administrador</a>
                        <a href="DashBoardAdmin.jsp"><i class="fas fa-tachometer-alt"></i></i><span>DashBoard</span></a>
                        <a href="Usuarios1?op=listar"><i class="fas fa-user-edit"></i><span>Usuarios 1</span></a>
                        <a href="Usuarios2?op=listar"><i class="fas fa-user-plus"></i><span>Usuarios 2</span></a>
                        <a  href="Motorizado?op=listar"><i class="fas fa-utensils"></i><span>Personal Delivery</span></a>
                        <a  href="Menu?op=lista"><i class="fas fa-utensils"></i><span>Carta de Menu</span></a>
                        <a  href="#"><i class="fas fa-gift"></i><span>Pedidos</span></a>
                        <a href="#"><i class="fas fa-sign-out-alt"></i><span>Salir</span></a>
                        <a href="#"><i class="fas fa-question-circle"></i><span>Soporte</span></a>
                    </nav>
                </div>
                <main class="main col">
                    <div class="row justify-content-center align-content-center text-center">
                        <div class="columna ">
                            <h1>Catalogo de Menu</h1>
                                
                            
                            <a class="btn btn-secondary" href="AgregarProducto.jsp" id="menu">Agregar Nuevo Producto</a>
                            <br> <br>
                            
                            <div class="container">

                                <div class="row">
                                    <%
                                        ArrayList<ProductosMenu> lista = (ArrayList<ProductosMenu>) request.getAttribute("lista");

                                        for (int i = 0; i < lista.size(); i++) {
                                            ProductosMenu p = lista.get(i);
                                    %>


                                    <div class="col-md-6 col-lg-4 project-box parrilla">
                                        <div class="card w-100 h-90 card-border mb-5">

                                            <div class="inner">
                                                <img src="img/productos/<%=p.getImagen()%>" class="card-img-top" alt="...">
                                            </div>
                                            <div class="card-body text-center">
                                                <h5 class="card-title"><%=p.getNombre()%></h5>
                                                <p class="card-text h-20"><%=p.getDescripcion()%></p>
                                                <hr>
                                                <p class="card-text">S/ <%=p.getPrecio()%></p>
                                                <a href="Menu?op=eliminar&id=<%=p.getID()%>" class="btn btn-danger mb-3">Eliminar</a>
                                                <a href="Menu?op=consulta&id" class="btn btn-info mb-3">Editar</a>
                                            </div>
                                        </div>
                                    </div>









                                    <%
                                        }
                                    %>
                                </div>

                                </main>
                            </div>





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
