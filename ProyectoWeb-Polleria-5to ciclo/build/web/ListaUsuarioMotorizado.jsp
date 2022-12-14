<%-- 
    Document   : login
    Created on : 8 oct. 2021, 14:54:26
    Author     : sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="Usuarios.UsuarioMotorizado"%>
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
                            
                            <h1>Lista De Usuarios Registrados</h1>                                                      
                            
                            <br>
                            <div type="button" class="btn btn-info ">
                                <a>Agregar Nuevo Usuario</a>
                            </div>
                            <br>  <br>  
                                <table class="table table-warning table caption-top " >
                                    <tr > 
                                        <td>ID</td>
                                        <td>Nombre</td>
                                         <td>Apellido</td>
                                         <td>Correo</td>
                                         <td>Telefono</td>
                                         <td>Genero</td>
                                         <td>Placa</td>
                                         <td>Estado</td>
                                          <td>Accion</td>
                                    </tr>
                                    
                                    <%
                                    ArrayList<UsuarioMotorizado> lista = (ArrayList<UsuarioMotorizado>)request.getAttribute("lista");
                                    for(int i = 0; i<lista.size();i++){
                                        UsuarioMotorizado user = lista.get(i);
                                    
                                        
                                    %>
                                    
                                    <tr class="table-bordered table table-hover table-sm ">
                                        <td><%=user.getID_M()%></td>
                                        <td><%=user.getNombre()%></td>
                                         <td><%=user.getApellido()%></td>
                                         <td><%=user.getCorreo()%></td>
                                         <td><%=user.getCelular()%></td>
                                       
                                         <td><%=user.getGenero()%></td>
                                         <td><%=user.getPlaca()%></td>
                                         <td><%=user.getEstado()%></td>
                                         <td class="boton1">
                                             <a class="boton" href="#" class="link-danger"><i class="far fa-trash-alt"></i></a>
                                            <a  class="boton" href="#" class="link-danger"><i class="far fa-edit"></i></a>    
                                         </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </table>   
                                
                            
                            
                            
                        </div>
                    </div>
                </main>
            </div>
        </div>




        <footer class="footer bg-dark">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>Compa??ia</h4>
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
                            <li><a href="#">Jordy Anthony S??nchez</a></li>
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
    