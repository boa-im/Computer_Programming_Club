<%-- 
    Document   : BIRegister
    Created on : 7 Feb 2023, 21:53:03
    Author     : Boa Im
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css">        
        <title>BI Computer Programming Club</title>
    </head>
    <body>
        <jsp:include page="BIBanner.jsp" />
        <main>
            <h3>Thanks for joining our club!</h3>
            <p><strong>Full Name: </strong>${param.name}</p>
            <p><strong>Email: </strong>${param.email}</p>
            <p><strong>Phone: </strong>${param.phone}</p>
            <p><strong>IT Program: </strong>${param.program}</p>
            <p><strong>Year Level: </strong>${param.year}</p>
            <p>To register another member, click on the Back button in your browser or <br>the Return button shown below.</p>
            <button type="button" onclick="window.location='BIRegister.jsp'" style="margin-left: 20px">Return</button>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
