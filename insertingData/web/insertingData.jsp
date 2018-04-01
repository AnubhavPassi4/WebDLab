<%-- 
    Document   : insertingData
    Created on : 31 Mar, 2018, 12:22:09 PM
    Author     : Anubhav Passi
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page  import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            #container{
                 display: table;
                 margin: 0 auto;
                  border: grey 2px solid;
                   padding: 10px;
                  background:#e3ebf7;
            }
            h3{
                text-align: center;
                float: top;
            }
            td{
                padding: 4px;
            }
            #button{
                float: right;
            }
            </style>
        <title>Inserting Data</title>
    </head>
    <body>
        
        <%!
        public class Actor{
            String URL = "jdbc:mysql://localhost:3306/sakila";
            String USERNAME = "root";
            String PASSWORD = "anmolpassi";
            
            Connection connection = null;
            PreparedStatement insertActors = null;
            ResultSet resultSet = null;
            
            public Actor(){
                
                try{
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    
                    insertActors = connection.prepareStatement(
                    "INSERT INTO actor (first_name, last_name, last_update)"
                    + " VALUES (?, ?, ?)");
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
            public int setActors (String first, String last, Timestamp timeStamp){
                int result=0;
                try{
                    insertActors.setString(1, first);
                    insertActors.setString(2, last);
                    insertActors.setTimestamp(3, timeStamp);
                    result = insertActors.executeUpdate();
                }catch (SQLException e){
                    e.printStackTrace();
                }
                return result;
                
            }
            
        }
        %>
        <%
         int result =0;
         
         if (request.getParameter("submit") != null){
         String firstName = new String();
         String lastName = new String();
         if (request.getParameter("first")!= null){
             firstName = request.getParameter("first");
         }
          if (request.getParameter("last")!= null){
             lastName = request.getParameter("last");
         }
          
          Date date = new Date();
          Timestamp timeStamp = new Timestamp(date.getTime());
          
          Actor actor = new Actor();
          result = actor.setActors(firstName, lastName, timeStamp);
         }      
        %>
        <form id="container" name="myForm" action="insertingData.jsp" method="post">
           <h3>Register</h3>
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="first" value=""  /></td>
                        
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><input type="text" name="last" value=""  /></td>
                    </tr>
                </tbody>
            </table>
           <input id="button" type="submit" value="submit" name="submit" />
            
        </form>
    </body>
</html>
