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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                PersonaDAO dao = new PersonaDAO();
                String dui=((String)request.getAttribute("duiper"));
                Persona p=(Persona)dao.list(dui);
            %>
            <h1>Modificar Persona</h1>
            <form action="Controlador">
                <label>DUI:</label>
                <input type="text" name="txtDui" value="<%= p.getDui() %>" /><br>
                <label>Nombres:</label>
                <input type="text" name="txtNom" value="<%= p.getNombres() %>" /><br>
                <label>Apellidos:</label>
                <input type="text" name="txtApe" value="<%= p.getApellidos() %>" /><br>
                
                <input type="hidden" name="txtDui" value="<%= p.getDui() %>">
                
                <input type="submit" name="accion" value="Actualizar">
                
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
