<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Database Connection Test</title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/ebookstore";
    String username = "meomeo";
    String password = "meomeomeo";

    Connection conn = null;
    String message = "";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
        message = "Database connection successful!";
    } catch (SQLException e) {
        message = "Error: Unable to connect to the database. " + e.getMessage();
    } catch (ClassNotFoundException e) {
        message = "Error: JDBC Driver not found. " + e.getMessage();
    } finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                message = "Error: Unable to close the connection. " + e.getMessage();
            }
        }
    }
%>
<h2><%= message %></h2>
</body>
</html>