<%-- 
    Document   : ucitajProizvod.jsp
    Created on : Nov 25, 2021, 10:10:41 PM
    Author     : Tarik
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proizvodi</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Proizvodi: </h1>
        <hr>
      <c:forEach items="${items}" var="product">
                        <div class ="col-sm-4">
                       <div class="card mt-5" >
                            
                            <div class="card-body">
                            <h5 class="card-title">${product.getNaziv()}</h5>
                            <p class="card-text">${product.getOpis()}</p>
                            <p class="card-text"><small class="text-muted">$ ${product.getCijena()}</small></p>
                            <br>
                            <c:if test="${user.role == 2}" >
                            <form action="AddToCart" method="POST" class="d-flex">
                                <input type="text" hidden name="product_id" value="${product.getId()}">
                                <button class="btn btn-outline-success" type="submit">Buy product</button>
                            </form>
                            </c:if>
                            
                           
                        </div>
                       </div>
                         </div>
                     </c:forEach>
         
        </ul>
    </body>
</html>