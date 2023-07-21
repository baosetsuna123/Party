<%-- 
    Document   : login
    Created on : Dec 29, 2022, 10:44:33 PM
    Author     : Hoang Hiep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="common/header.jsp" %>
        <link rel="stylesheet" href="css/login.css"/>
    </head>
    <body class="text-center">
        <main class="form-signin">
            <form action="login" method="post">
                <img class="mb-4" src="img/logo.png" alt="" width="72" height="72">
                <h1 class="h3 mb-3 fw-normal">Login</h1>
                <div class="form-floating">
                    <input type="text" name="username" class="form-control" id="floatingInput"  placeholder="Username"/>
                    <label for="floatingInput">Username</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password"/>
                    <label for="floatingPassword">Password</label>
                </div>
                <input type="submit" value="Login" class="w-100 btn btn-lg btn-primary"/>
            </form>
            <p>${msg}</p>
        </main>
        <%@include file="common/script.jsp" %>
    </body>
</html>
