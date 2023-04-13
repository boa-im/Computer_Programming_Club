<%-- 
    Document   : BIAddBook
    Created on : 3 Mar 2023, 13:13:11
    Author     : Boa Im
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <p style="color: red"><i>${message}</i></p>
            <form action="BIAddBook" method="post">
                <h2>Add a Book</h2>
                <p>Code: <input type="text" id="code" name="code" style="width: 200px; margin-left: 40px;"></p>
                <p>Description: <input type="text" id="description" name="description" style="width: 300px;"></p>
                <p>Quantity: <input type="text" id="quantity" name="quantity" style="width: 100px; margin-left: 20px;"></p>
                <p id="button"><input type="submit" value="Save">
                    <button type="button" onclick="window.location='BIDisplayBooks'">Cancel</button></p>
            </form>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
