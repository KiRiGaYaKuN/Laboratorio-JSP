<%-- 
    Document   : response
    Created on : 8/09/2021, 11:07:54 PM
    Author     : cristian-patino
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:useBean id="myBean" scope="session" class="co.edu.unipiloto.Namehandler" />
        
        <jsp:setProperty name="myBean" property="name"/>
        <jsp:setProperty name="myBean" property="fecha" />
        Hola, 
        <jsp:useBean id="hora" class="java.util.Date"/> 
        
        <c:choose>
                <c:when test="${hora.hours > 3 && hora.hours < 12}">
                    Buenos dias!
                </c:when>
                    <c:when test="${hora.hours >= 12 && hora.hours<7}">
                    Buenas tardes!
                </c:when>
                    <c:when test="${hora.hours >= 7 && hora.hours<=24 || hora.hours >= 0 && hora.hours<=3}">
                    Buenas noches!
                </c:when>
                    <c:otherwise>
                        hora galactica 
                    </c:otherwise>
            </c:choose>
    
    
        <jsp:getProperty name="myBean" property="name" />
        tienes 
        <jsp:getProperty name="myBean" property="age" />    
         años
            
    </body>
</html>
