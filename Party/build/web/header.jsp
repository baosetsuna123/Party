<%-- 
    Document   : header
    Created on : Dec 29, 2022, 10:58:53 PM
    Author     : Hoang Hiep
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${admin!=null}">
    <div class="d-flex justify-content-between mt-5">
        <div>Welcome, ${admin.name}</div>
        <div><a href="logout">Logout</a></div>
    </div>
    <hr/>
</c:if>
 
<%@include file="menu.jsp" %>
