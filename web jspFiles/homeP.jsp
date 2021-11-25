<%-- 
    Document   : homeP
    Created on : Nov 23, 2021, 1:26:58 PM
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
    </head>
    <body>
      <jsp:include page="nav.jsp"></jsp:include>
      <br> 
      <c:if test="${user.role == 1}">   
        <a href="dodajProizvod.jsp"><button type="button" class="btn btn-primary btn-lg" style="margin-left:10px">DODAJ PROIZVOD</button></a>
        <a href="pregledNarudzbi.jsp"><button type="button" class="btn btn-primary btn-lg" style="margin-left: 50px"> PREGLED NARUDŽBI</button></a>
    </c:if>         
    </body>
</html>
