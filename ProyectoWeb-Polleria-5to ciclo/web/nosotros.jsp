<%-- 
    Document   : nosotros
    Created on : 8 oct. 2021, 15:04:17
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
        
        <section id="nosotros" class="px-5 pt-5 pb-5 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>MILANO</h2>
                        <p class="">
                            Lorem Ipsum is simply dummy text of the printing and 
                            typesetting industry. Lorem Ipsum has been the industry's 
                            standard dummy text ever since the 1500s, when an unknown 
                            printer took a galley of type and scrambled it to make a type 
                            specimen book. It has survived not only five centuries, but also 
                            the leap into electronic typesetting, remaining essentially unchanged. 
                            It was popularised in the 1960s with the release of Letraset 
                            sheets containing Lorem Ipsum passages, and more recently with
                            desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        </p>
                    </div>
                    <div class="col-sm-4 col-sm offset-sm-2">
                        <div class="acerca">
                            <div class="superpos-acerca"></div>
                            <img src="img/nosotros/polleria.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="nosotros" class="px-5 pt-5 pb-5 bg-dark">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="acerca-izq">
                            <div class="superpos-acerca"></div>
                            <img src="img/nosotros/nos-2.png" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <div class="col-sm-6 offset-sm-2 text-light">
                        <h2>MISION</h2>
                        <p class="">
                            Brindar Al Público Un Servicio De Calidad, 
                            Ofreciendo Un Buen Producto Y También Dando Una Excelente 
                            Atención En Un Local Acorde Con Las Expectativas De Nuestros
                            Clientes; Moderno Y Acogedor. Constituyéndonos Así En Una Fuente
                            De Trabajo Atractiva Que Ayude Al Sustento De Las Familia Peruana.
                           
                        </p>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="nosotros" class="px-5 pt-5 pb-5 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>VISION</h2>
                        <p class="">
                            Dominar El Mercado De Venta De Pollos A La Brasa Y Adicionales
                            A Través De La Satisfacción Del Cliente; Llegando A Ser La Cadena
                            De Restaurantes Más Exitosos En La Especialidad De “Pollos A La Brasa”,
                            Conquistando El Mercado Nacional E Insertándonos A Través De Nuestras
                            Franquicias En El Mercado Internacional Y Así Posicionarnos Entre Los Mejores 
                            A Nivel Mundial.
                        </p>
                    </div>
                    <div class="col-sm-4 col-sm offset-sm-2">
                        <div class="acerca">
                            <div class="superpos-acerca"></div>
                            <img src="img/nosotros/nos-3.png" class="d-block w-100" alt="...">
                        </div>
                    </div>
                </div>
            </div>
        </section>

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
