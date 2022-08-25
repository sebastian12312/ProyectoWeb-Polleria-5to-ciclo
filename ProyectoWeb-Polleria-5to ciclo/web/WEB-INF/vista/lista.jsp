<%-- 
    Document   : lista
    Created on : 8 oct. 2021, 20:11:33
    Author     : sebastian
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Clientes.Clientes1"%>
<%@page import="ModeloDAO.Clientes1DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>lista</h1>
            <table>
                <tr>
                    <th>1</th>
                    <th>2</th>
                    <th>3</th>
                    <th>4</th>
                    <th>5</th>
                    <th>6</th>
                    <th>7</th>              
                </tr>
                <%
                Clientes1DAO dao = new Clientes1DAO();
                List<Clientes1>list=dao.Lista();
                Iterator<Clientes1> ite= list.iterator();
                Clientes1 cl1 = null;
                while(ite.hasNext()){
                    cl1 = ite.next();
                    }
                
                %>
                <tr>
                    <td><%=cl1.getCod()%></td>
                    <td><%=cl1.getNombre()%></td>
                    <td><%=cl1.getApellido()%></td>
                    <td><%=cl1.getCorreo()%></td>
                    <td><%=cl1.getPassword()%></td>
                    <td><%=cl1.getGenero()%></td>
                    <td><%=cl1.getTelefono()%></td>
                </tr>
            </table>
        </div>
    </body>
</html>
