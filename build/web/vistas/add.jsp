<%-- 
    Document   : add
    Created on : 05-29-2020, 06:59:48 PM
    Author     : Ernesto
--%>

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
                <h1>Agregar Persona</h1>
                <form action="Controlador">
                    <label>DUI:</label>
                    <input class="form-control" type="text" name="txtDui" value="" /><br>
                    <label>Nombres:</label>
                    <input class="form-control" type="text" name="txtNom" value="" /><br>
                    <label>Apellidos:</label>
                    <input class="form-control" type="text" name="txtApe" value="" /><br>
                    <input type="submit" name="accion" value="Agregar">
                </form> 
            </div>

        </div>
    </body>
</html>
