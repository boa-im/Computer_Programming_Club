<%-- 
    Document   : BIELoan
    Created on : 29 Mar 2023, 14:59:11
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
        
        <table>
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>QOH</th>
                <th>Action</th>
            </tr>
            <%ArrayList<Book> list = (ArrayList<Book>) application.getAttribute("loanItems");
                    for (Book book : list) {%>
            <tr>
                <td><%=book.getCode()%></td>
                <td><%=book.getDescription()%></td>
                <td><%=book.getQuantity()%></td>
                <%if(book.getQuantity() >= 1) {%><td><a href="BICart?action=reserve&code=<%=book.getCode()%>" style="color:green;">Reserve</a></td><%}%>
                <%if(book.getQuantity() <= 0) {%><td style="text-align:right;">N/A</td><%}%>
            </tr>
            <%}%>
        </table>
        
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
