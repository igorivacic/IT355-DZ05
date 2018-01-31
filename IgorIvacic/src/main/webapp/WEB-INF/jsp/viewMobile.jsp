<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<html>
    <head>
        <title>Prikaz mobilnog telefona</title>
    </head>
    <body>
        <h2>Podaci o mobilnom </h2>
        <table>
            <tr>
                <td>Proizvodjac:</td>
                <td>${maker}</td>
            </tr>
            <tr>
                <td>Model: </td>
                <td>${model}</td>
            </tr>
            <tr>
                <td>Cena: </td>
                <td>${price}</td>
            </tr>
            
              <tr>
                <td>Naziv: </td>
                <td>${name}</td>
            </tr>
        </table>
    </body>
</html>
<%@ include file="footer.jsp" %>