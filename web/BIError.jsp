<%-- 
    Document   : BIError
    Created on : 3 Mar 2023, 15:14:36
    Author     : Boa Im
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h1>Java Error</h1>
            <p>Sorry, Java has thrown an exception.</p>
            <p>To continue, click the Back button.</p>

            <h2>Details</h2>
            <p>Type: ${errorType}</p>
            <p>Message: ${errorMessage}</p>
        </main>
        <jsp:include page="BIFooter.jsp" />
    </body>
</html>
