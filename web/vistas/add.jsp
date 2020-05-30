<%-- 
    Document   : add
    Created on : 05-29-2020, 06:59:48 PM
    Author     : Ernesto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Persona</h1>
            <form action="Controlador">
                <label>DUI:</label>
                <input type="text" name="txtDui" value="" /><br>
                <label>Nombres:</label>
                <input type="text" name="txtNom" value="" /><br>
                <label>Apellidos:</label>
                <input type="text" name="txtApe" value="" /><br>
                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>
