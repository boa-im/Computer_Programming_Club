<%-- 
    Document   : BIAdmin
    Created on : 7 Feb 2023, 21:53:43
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
            <h2>Admin : Data Maintenance</h2>
            <a href="BIDisplayBooks" style="color: green">Maintain Books</a><br>
            <a href="BIMemberAdmin?action=displayMembers" style="color: green">Display Members</a>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
