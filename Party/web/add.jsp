<%-- 
    Document   : add
    Created on : Dec 22, 2022, 10:50:52 PM
    Author     : Hoang Hiep
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add person</title>
        <%@include file="common/header.jsp" %>
    </head>
    <body>
        <div class="d-flex justify-content-center">
            <div>
                <%@include file="header.jsp" %>
                <h1>Add person</h1>
                <form action="add" method="post" class="form-min-width">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="Name" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" name="age" class="form-control" id="age" placeholder="Age" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="age" class="form-label">Address</label>
                        <select name="address" class="form-select">
                            <c:forEach var="address" items="${addressList}">
                                <option value="${address.id}">${address.address}</option>
                            </c:forEach>
                         </select>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Add" />
                </form>
                <p>${msg}</p>
            </div>
        </div>
    </body>
</html>
