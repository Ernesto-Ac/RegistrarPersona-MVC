<%-- 
    Document   : edit
    Created on : 05-29-2020, 07:00:27 PM
    Author     : Ernesto
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./bootstrap4/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    PersonaDAO dao = new PersonaDAO();
                    String dui = ((String) request.getAttribute("duiper"));
                    Persona p = (Persona) dao.list(dui);
                %>
                <h1>Modificar Persona</h1>
                <form action="Controlador">

                    <label>Nombres:</label>
                    <input class="form-control" type="text" name="txtNom" value="<%= p.getNombres()%>" /><br>
                    <label>Apellidos:</label>
                    <input class="form-control" type="text" name="txtApe" value="<%= p.getApellidos()%>" /><br>

                    <input type="hidden" name="txtDui" value="<%= p.getDui()%>">

                    <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">

                    <a class="btn btn-success" href="Controlador?accion=listar">Regresar</a>
                </form>

            </div>

        </div>
    </body>
</html>
