<%-- 
    Document   : BIIndex
    Created on : 7 Feb 2023, 21:50:49
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
            <h2>Java Web Technologies: Section 2</h2>
            <p>Pair Programming Team: Boa Im</p>
            <h2>Assignment 4</h2>
            <h2>Driver: Boa Im</h2>
            <h2>Observer: Boa Im</h2>
            <br>
            <p>Current Date and Time</p>
            <h2><%= new Date() %></h2>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
