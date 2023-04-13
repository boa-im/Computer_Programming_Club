<%-- 
    Document   : BIECart
    Created on : 29 Mar 2023, 14:59:32
    Author     : Boa Im
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="club.business.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css">  
        <title>BI Computer Programming Club</title>
    </head>
    <body>
        <jsp:include page="BIBanner.jsp" />

        <table>
            <thead>
                <tr><th colspan="3" style="text-align: center">Your Loan Cart</th></tr>
                <tr>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="totalQty" value="0" />
                <c:forEach items="${sessionScope.loanCart.items}" var="item">
                <tr>
                    <td>${item.code}</td>
                    <td>${item.description}</td>
                    <td style="text-align: right">${item.quantity}</td>
                </tr>
                <c:set var="totalQty" value="${totalQty + item.quantity}" />
                </c:forEach>
                <tr><td></td></tr>
                <tr>
                    <td colspan="2" style="text-align: right">Total:</td>
                    <td style="text-align: right">${totalQty}</td>
                </tr>
            </tbody>
        </table>
                
        <p></p>
        <p><a style="color: green" href="BIClearCart">Clear the cart</a>
            <br><a style="color: green" href="BILoan">Return to eLoan</a></p>

        <jsp:include page="BIFooter.jsp" />
    </body>
</html>