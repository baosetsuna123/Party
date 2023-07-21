<%-- 
    Document   : list
    Created on : Dec 22, 2022, 10:50:59 PM
    Author     : Hoang Hiep
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Party</title>
        <%@include file="common/header.jsp" %>
    </head>
    <body>
        <div class="d-flex justify-content-center">
            <div style="min-width: 400px">
                <%@include file="header.jsp" %>
                <h1 class="mt-5 mb-3">Member</h1>
                
                <div class="d-flex justify-content-between">
                    <form class="row g-2" action="list">
                        <div class="col-auto">
                          <label for="inputName" class="visually-hidden">Name</label>
                          <input type="text" name="name" value="${name}" class="form-control" id="inputName" placeholder="Name">
                        </div>
                        <div class="col-auto">
                          <button type="submit" class="btn btn-primary mb-3">Search</button>
                        </div>
                    </form>
                    <c:if test="${admin!=null}">
                        <a href="add"><button type="button" class="btn btn-success">+ Add</button></a>
                    </c:if>
                </div>
                
                <br/>
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Address</th>
                            <c:if test="${admin!=null}">
                            <th>Update</th>
                            <th>Delete</th>
                            </c:if>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="person" items="${list}">
                        <tr>
                            <td>${person.id}</td>
                            <td>${person.name}</td>
                            <td>${person.age}</td>
                            <td>${person.address}</td>
                            <c:if test="${admin!=null}">
                            <td style="text-align: center">
                                <form action="update" method="GET">
                                    <input type="hidden" name="id" value="${person.id}">
                                    <button type="submit" class="btn btn-light">🖊</button>
                                </form>
                            </td>
                            <td style="text-align: center">
                                <form action="delete" method="POST">
                                    <input type="hidden" name="id" value="${person.id}">
                                    <button type="submit" class="btn btn-light">✖</button>
                                </form>
                            </td>
                            </c:if>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p>${msg}</p>
                <c:set var="msg" value="${null}" scope="session"></c:set>
            </div>
        </div>
        
    </body>
</html>
