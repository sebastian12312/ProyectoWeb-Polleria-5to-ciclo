<%-- 
    Document   : index
    Created on : 8 oct. 2021, 14:59:31
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
                        <li class="nav-item"><a class="nav-link" href="Pollos?op=Listar">Productos</a></li>
                        <li class="nav-item"><a class="nav-link" href="contacto.jsp">Contacto</a></li>
                        <li class="nav-item"><a class="nav-link" href="nosotros.jsp">Sobre nosotros</a></li>
                        <li class="nav-item"><a class="nav-link" href="loguear.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--CARRUSEL-->
        <div id="carouselElektra" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselElektra" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselElektra" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselElektra" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/index/carrusel1.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="img/index/carrusel2.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="img/index/carrusel3.png" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselElektra" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselElektra" data-bs-slide="next">
                <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--Separator-->
        <div id="ribbon" class="container-fluid">
            <div id="birthday" class="container w-50 ps-5 rounded">
                <div class="row align-items-center">
                    <div class="col-sm p-3">
                        <img src="img/index/pollofigura.png" class="w-50 mx-auto d-block" alt="">
                    </div>

                    <div class="col-sm p-3 text-light text-center">
                        <p class="text-dark h3">Es hora de</p>
                        <h4 class="h2 text-shadow">Hacer tu pedido</h4>
                    </div>
                </div>
            </div>
        </div>

        <!--Categorias-->
        <div id="categorias" class="px-5 pt-3 pb-3 bg-light">
            <div class="container">
                <div class="row">
                    <h3 class="text-center text-dark text-shadow p-4">Categorías</h3>
                </div>

                <div class="row row-cols-2 row-cols-sm-2 row-cols-md-4">
                    <div class="col-sm">
                        <a href="#"><img src="img/index/figurapollo.png" alt="" class="w-100 amiibo"></a>
                        <a href="#"><div class="text-center text-dark p-2"><span class="amiibo-name h5 p-2">Pollos a la brasa</span></div></a>
                    </div>
                    <div class="col-sm"> 
                        <a href="#"><img src="img/index/figuraparrilla.png" alt="" class="w-100 amiibo"></a>
                        <a href="#"><div class="text-center text-dark p-2 ms-md-5"><span class="amiibo-name h5">&nbsp;Parrillas Milano</span></div></a>
                    </div>
                    <div class="col-sm">
                        <a href="#"><img src="img/index/figuraensalada.png" alt="" class="w-100 amiibo"></a>
                        <a href="#"><div class="text-center text-dark p-2"><span class="amiibo-name h5 p-2">Ensaladas</span></div></a>
                    </div>
                    <div class="col-sm">
                        <a href="#"><img src="img/index/figurabebida.png" alt="" class="w-100 amiibo"></a>
                        <a href="#"><div class="text-center text-dark p-2"><span class="amiibo-name h5 p-2">Bebidas</span></div></a>
                    </div>
                </div>
                <div class="row py-5">
                    <div class="col text-center">
                        <a href="#">
                            <button class="btn btn-marca btn-lg rounded-pill p-3 fw-bold">Mostrar todos los productos</button>
                        </a>
                    </div>
                </div>

            </div>
        </div>

        <!--Combos-->
        <div id="combos" class="bg-light px-5 pb-3">
            <div class="container">
                <div class="row">
                    <h3 class="text-center text-dark text-shadow p-4">Combos</h3>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-4 d-flex">
                        <div class="card w-100 card-border mb-5 flex-fill">
                            <div class="inner">
                                <img src="img/index/combo1.png" class="card-img-top" alt="...">
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title">Combo Selección</h5>
                                <p class="card-text h-35">1/4 pollo a la brasa + papas fritas + ensalada + 2 palitos anticuchos + inca kola 500ml</p>
                                <hr>
                                <p class="card-text">S/. 25.90</p>
                                <a href="#" class="btn btn-marca">Comprar</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-md-6 col-lg-4 d-flex">
                        <div class="card w-100 card-border mb-5 flex-fill">
                            <div class="inner">
                                <img src="img/index/combo2.png" class="card-img-top" alt="...">
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title">Combo Milano</h5>
                                <p class="card-text h-35">1/2 pollo a la brasa + 2 porciones papas fritas + ensalada + 2 chorizos parrilleros + 2 inca kola 500ml</p>
                                <hr>
                                <p class="card-text">S/. 45.90</p>
                                <a href="#" class="btn btn-marca">Comprar</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-md-6 col-lg-4 d-flex">
                        <div class="card w-100 card-border mb-5 flex-fill">
                            <div class="inner">
                                <img src="img/index/combo3.png" class="card-img-top" alt="...">
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title">Combo Familiar</h5>
                                <p class="card-text h-35">1 pollo a la brasa +2 porciones papas fritas + ensalada + 4 palitos anticuchos + inca kola 1.5L</p>
                                <hr>
                                <p class="card-text">S/. 65.90</p>
                                <a href="#" class="btn btn-marca">Comprar</a>
                            </div>
                        </div>
                    </div>
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


        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
