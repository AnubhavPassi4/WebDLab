<%-- 
    Document   : dateGenetion
    Created on : 30 Mar, 2018, 1:09:43 AM
    Author     : Anubhav Passi
--%>
<%@page  import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Today's Date</title>
    </head>
    <%
        Date date = new Date();
        %>
    <body>
        <h1>Today's Date</h1>
        
           <p> Today's date is <%=date%></p>
        
    </body>
</html>
