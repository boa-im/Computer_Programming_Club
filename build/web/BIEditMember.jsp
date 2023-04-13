<%-- 
    Document   : BIEditMember
    Created on : 5 Apr 2023, 01:06:31
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
            <form action="BIMemberAdmin?email=${member.emailAddress}&action=saveMember&db_operation=update" method="post">
                <h2>Edit an Existing Member</h2>
                <p style="color: red"><i>${message}</i></p>
                <p>Email: <input type="text" id="email" name="email" value="${member.emailAddress}" style="width: 300px; margin-left: 30px;" disabled></p>
                <p>Full Name: <input type="text" id="name" name="name" value="${member.fullName}" style="width: 200px"></p>
                <p>Phone: <input type="text" id="phone" name="phone" value="${member.phoneNumber}" style="width: 100px; margin-left: 30px;"></p>
                <p>IT Program: 
                    <select id="program" name="program">
                        <option value="CAS" ${"CAS".equals(member.programName) ? "selected" : ""}>CAS</option>
                        <option value="SQATE" ${"SQATE".equals(member.programName) ? "selected" : ""}>SQATE</option>
                        <option value="CPA" ${"CPA".equals(member.programName) ? "selected" : ""}>CPA</option>
                        <option value="CP" ${"CP".equals(member.programName) ? "selected" : ""}>CP</option>
                        <option value="ITID" ${"ITID".equals(member.programName) ? "selected" : ""}>ITID</option>
                        <option value="CAD" ${"CAD".equals(member.programName) ? "selected" : ""}>CAD</option>
                        <option value="ITSS" ${"ITSS".equals(member.programName) ? "selected" : ""}>ITSS</option>
                    </select>
                </p>
                <p>Year Level: 
                    <select id="year" name="year">
                        <option value="1" ${"1".equals(String.valueOf(member.yearLevel)) ? "selected" : ""}>1</option>
                        <option value="2" ${"2".equals(String.valueOf(member.yearLevel)) ? "selected" : ""}>2</option>
                        <option value="3" ${"3".equals(String.valueOf(member.yearLevel)) ? "selected" : ""}>3</option>
                        <option value="4" ${"4".equals(String.valueOf(member.yearLevel)) ? "selected" : ""}>4</option>
                    </select>
                </p>
                <p id="button"><input type="submit" value="Save">
                <button type="button" onclick="window.location='BIMemberAdmin?action=editMember&email=${member.emailAddress}'">Reset</button></p>
            </form>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
