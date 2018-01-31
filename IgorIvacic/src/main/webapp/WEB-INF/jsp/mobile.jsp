<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ include file="header.jsp" %>
<html>
    <head>
        <title>Unos mobilnog telefona</title>
    </head>
    <body>
        <h2>Unesite informacije o mobilnom telefonu</h2>
        <form:form method="POST" action="addMobile">
            <table>
                <tr>
                    <td><form:label path="maker"><spring:message
                                code="maker"/> </form:label></td>
                    <td><form:input path="maker" /></td>
                </tr>
                <tr>
                    <td><form:label path="model"><spring:message
                                code="model"/></form:label></td>
                    <td><form:input path="model" /></td>
                </tr>
                <tr>
                    <td><form:label path="price"><spring:message
                                code="price"/></form:label></td>
                    <td><form:input path="price" /></td>
                </tr>


                <tr>
                    <td><form:label path="name"><spring:message
                                code="name"/></form:label></td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Pošalji"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
<%@ include file="footer.jsp" %>
