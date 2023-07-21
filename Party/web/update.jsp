<%-- 
    Document   : update
    Created on : Dec 29, 2022, 9:35:29 PM
    Author     : Hoang Hiep
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update person</title>
        <%@include file="common/header.jsp" %>
    </head>
    <body>
        <div class="d-flex justify-content-center">
            <div>
                <%@include file="header.jsp" %>
                <h1>Update person</h1>
                <form action="update" method="post" class="form-min-width">
                    <input type="hidden" name="id" value="${person.id}">

                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="Name" value="${person.name}" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" name="age" class="form-control" id="age" placeholder="Age" value="${person.age}" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="age" class="form-label">Address</label>
                        <select name="address" class="form-select">
                            <c:forEach var="address" items="${addressList}">
                                <option value="${address.id}" ${person.address.equals(Integer.toString(address.id)) ? "selected" : ""} >${address.address}</option>
                            </c:forEach>
                         </select>
                    </div>
                    
                    <input type="submit" class="btn btn-primary" value="Update" />
                </form>
            </div>
        </div>
    </body>
</html>
