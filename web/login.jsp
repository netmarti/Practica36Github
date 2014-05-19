<%-- 
    Document   : login
    Created on : 6-mag-2014, 10.29.03
    Author     : confalonieri
--%>

<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de login de la aplicacion</title>
    </head>
    <body>
        <h1>Pagina de Login</h1>
        
        <form method="post" action="login">
            
            <label for="usuario">Nombre</label>
            <input type="text" name="usuario">
            <br>
            
            <label for="password">Password</label>
            <input type="password" name="password">
            <br>
            
            <input type="submit" value="Login">
            <br>  
        </form>
    </body>
</html>
