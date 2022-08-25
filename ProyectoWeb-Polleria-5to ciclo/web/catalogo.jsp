<%-- 
    Document   : Catalogo
    Created on : 8 oct. 2021, 14:50:59
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/inicio.css">
        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous">
        </script>
    </head>
    <body>

        <!--NAVBAR-->
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

        <!--Carrusel-->
        <div id="carouselElektra" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/index/bannerproductos.png" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>

        <div id="productos" class="bg-light px-5 pb-3">
            <div class="container">
                <div class="row pt-4">
                    <div class="col-md-12 text-center mb-4 mx-auto d-md-block d-grid gap-2 col-6" id="filter-btn-box" role="group" aria-label="Basic mixed styles example">
                        <button type="button" class="main-btn p-2 mx-2 my-1 fw-bold filter-btn active" id="todo-btn">Todos</button>
                        <button type="button" class="main-btn p-2 mx-2 my-1 fw-bold filter-btn" id="pollo-btn">Pollos a la brasa</button>
                        <button type="button" class="main-btn p-2 mx-2 my-1 fw-bold filter-btn" id="PARRILLAS-btn">Parrillas</button>
                        <button type="button" class="main-btn p-2 mx-2 my-1 fw-bold filter-btn" id="ensalada-btn">Ensaladas</button>
                        <button type="button" class="main-btn p-2 mx-2 my-1 fw-bold filter-btn" id="bebida-btn">Bebidas</button>
                    </div>
                </div>
                <div class="row">
                    <%
                        ArrayList<ProductosMenu> lista = (ArrayList<ProductosMenu>) request.getAttribute("lista");

                        for (int i = 0; i < lista.size(); i++) {
                            ProductosMenu p = lista.get(i);
                    %>
                    <div class="col-md-6 col-lg-4 project-box ">
                        <div class="card w-100 h-90 card-border mb-5 ">

                            <div class="inner">
                                <img src="img/productos/<%=p.getImagen()%>" class="card-img-top" alt="...">
                                
                                
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title"><%=p.getNombre()%></h5>
                                <p class="card-text h-20">Lomo fino a la parrilla + ensalada clásica + Gaseosa Personal</p>
                                
                                <p class="card-text"></p>
                                <a href="#" class="btn btn-marca mb-3">Comprar</a>
                                <a href="#" class="btn btn-marca mb-3">Agregar</a>
                            </div>
                        </div>
                    </div>

                    <%
                        }
                    %>





                </div>
            </div>
        </div>

        <!--Footer-->
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

        <script src="js/filterProducts.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>



    </body>
</html>
