<%-- 
    Document   : BIDisplayMembers
    Created on : 4 Apr 2023, 21:17:02
    Author     : Boa Im
--%>

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
            <h2>List of Members</h2>
            <table>
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>Full Name</th>
                        <th>Program</th>
                        <th>Year</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${members}" var="member">
                    <tr>
                        <td>${member.emailAddress}</td>
                        <td>${member.fullName}</td>
                        <td>${member.programName}</td>
                        <td>${member.yearLevel}</td>
                        <td><a href="BIMemberAdmin?action=editMember&email=${member.emailAddress}" style="color: green">Edit</a></td>
                        <td><a href="BIMemberAdmin?action=removeMember&email=${member.emailAddress}" style="color: green">Remove</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <input type="button" onclick="location.href='BIMemberAdmin?action=addMember';" value="Add a Member" />
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
