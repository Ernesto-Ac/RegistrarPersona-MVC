<%-- 
    Document   : listar
    Created on : 05-29-2020, 07:00:05 PM
    Author     : Ernesto
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="./bootstrap4/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
          
            <h1>Personas</h1>
           
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a><br>  <br>
            <table class="table table-bordered text-center" border="1">
                <thead>
                    <tr>
                        <th>DUI</th> 
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null;
                    while (iter.hasNext()) {
                        per = iter.next();

                %>
                <tbody>
                    <tr>
                        <td><%= per.getDui()%></td>
                        <td><%= per.getNombres()%></td>
                        <td><%= per.getApellidos()%></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?accion=editar&dui=<%= per.getDui()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&dui=<%= per.getDui()%>">Eliminar</a>
                           
                            <a></a>
                            <a></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>

    </body>
</html>
