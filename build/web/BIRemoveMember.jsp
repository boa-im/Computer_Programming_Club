<%-- 
    Document   : BIRemoveMember
    Created on : 9 Apr 2023, 23:44:56
    Author     : Boa Im
--%>

<%@page import="club.business.*"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <%Member member = (Member) request.getAttribute("member"); %>
            <form action="BIMemberAdmin?&action=deleteMember&email=<%=member.getEmailAddress()%>" method="post">
                <h2>Do you want to delete this member?</h2>
                <p>Email: <input type="text" id="email" name="email" value="${member.getEmailAddress()}" style="width: 300px; margin-left: 30px;" disabled></p>
                <p>Full Name: <input type="text" id="name" name="name" value="${member.getFullName()}" style="width: 200px" disabled></p>
                <p>Phone: <input type="text" id="phone" name="phone" value="${member.getPhoneNumber()}" style="width: 100px; margin-left: 30px;" disabled></p>
                <p>IT Program: <input type="text" id="program" name="program" value="${member.getProgramName()}" style="width: 40px;;" disabled></p>
                <p>Year Level: <input type="text" id="year" name="year" value="${member.getYearLevel()}" style="width: 40px;" disabled></p>
                <p id="button"><input type="submit" value="Yes">
                <button type="button" onclick="window.location='BIMemberAdmin?action=displayMembers'">No</button></p>
            </form>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html
