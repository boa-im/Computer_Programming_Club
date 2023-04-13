<%-- 
    Document   : BIFooter
    Created on : 7 Feb 2023, 21:53:50
    Author     : Boa Im
--%>
<%@ page import="java.util.*" %>
<% pageContext.setAttribute("currentYear", java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)); %>
<footer>
    <p>&copy; Copyright ${currentYear} Boa Im</p>
</footer>
