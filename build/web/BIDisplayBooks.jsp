<%-- 
    Document   : BIDisplayBooks
    Created on : 2 Mar 2023, 22:13:05
    Author     : Boa Im
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <h2>List of Books</h2>
        <table style="border: 1px solid black;">
            <tr>
                <th style="border: 1px solid black;">Code</th>
                <th style="border: 1px solid black;">Description</th>
                <th style="border: 1px solid black;">Quantity</th>
            </tr>
            <%ArrayList<Book> list = (ArrayList<Book>) request.getAttribute("List");
                    for (Book book : list) {%>
            <tr>
                <td style="border: 1px solid black;"><%=book.getCode()%></td>
                <td style="border: 1px solid black;"><%=book.getDescription()%></td>
                <td style="border: 1px solid black;"><%=book.getQuantity()%></td>
            </tr>
            <%}%>
        </table>
        <button type="button" onclick="window.location = 'BIAddBook.jsp'" style="margin-top: 10px">Add a Book</button>

        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
