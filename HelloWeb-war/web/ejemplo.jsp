 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : ejemplo
    Created on : 8/09/2021, 09:12:49 PM
    Author     : cristian-patino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="hora" class="java.util.Date"/>
        ${hora.hours}
        <c:if test="${hora.hours > 0}">
            Buenas tardes
        </c:if>
            <c:choose>
                <c:when test="${hora.hours > 0}">
                    Hello
                </c:when>
            </c:choose>
    </body>
</html>
