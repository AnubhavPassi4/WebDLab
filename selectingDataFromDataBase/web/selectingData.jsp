<%-- 
    Document   : selectingData
    Created on : 31 Mar, 2018, 1:03:21 AM
    Author     : Anubhav Passi
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SelectingDataFromDb</title>
    </head>
    <body>
        <h1>Selecting Data from Database</h1>
        <%!
        public class Category{
            String URL = "jdbc:mysql://localhost:3306/sakila";
            String USERNAME = "root";
            String PASSWORD = "anmolpassi";
            
            Connection connection = null;
            PreparedStatement selectCategory = null;
            ResultSet resultSet = null;
            
            public Category(){
                
                try{
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    
                    selectCategory = connection.prepareStatement(
                    "SELECT category_id, name FROM category");
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
            public ResultSet getCategory(){
                 
                try{
                    resultSet = selectCategory.executeQuery();
                } catch(SQLException e){
                    e.printStackTrace();
                }
                return resultSet;
            }
        }
        %>
        <%
             Category category = new Category();
             ResultSet categories = category.getCategory();
         %>
         <table border="1">
             <thead>
                 <tr>
                     <th>category_id</th>
                     <th>name</th>
                     
                 </tr>
             </thead>
             <tbody>
                 <% while (categories.next()){ %>
                 <tr>
                     <td><%= categories.getInt("category_id") %></td>
                     <td><%= categories.getString("name") %></td>
                     
                 </tr>
                 <% } %>
             </tbody>
         </table>

         
    </body>
</html>
