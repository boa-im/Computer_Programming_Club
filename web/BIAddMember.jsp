<%-- 
    Document   : BIAddMember
    Created on : 4 Apr 2023, 21:39:20
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
            <p style="color: red"><i>${message}</i></p>
            <form action="BIMemberAdmin?action=saveMember" method="post">
                <h2>Add a New Member</h2>
                <p>Email: <input type="text" id="email" name="email" style="width: 300px; margin-left: 30px;"></p>
                <p>Full Name: <input type="text" id="name" name="name" style="width: 200px;"></p>
                <p>Phone: <input type="text" id="phone" name="phone" style="width: 100px; margin-left: 30px;"></p>
                <p>IT Program: 
                    <select id="program" name="program">
                        <option value="CAS">CAS</option>
                        <option value="SQATE">SQATE</option>
                        <option value="CPA">CPA</option>
                        <option value="CP">CP</option>
                        <option value="ITID">ITID</option>
                        <option value="CAD">CAD</option>
                        <option value="ITSS">ITSS</option>
                    </select>
                </p>
                <p>Year Level: 
                    <select id="year" name="year">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                </p>
                <p id="button"><input type="submit" value="Save">
                <button type="button" onclick="window.location='BIMemberAdmin?action=addMember'">Reset</button></p>
            </form>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>