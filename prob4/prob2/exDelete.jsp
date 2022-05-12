<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@page import="java.sql.*,java.util.*" %>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Delete</title>
        </head>

        <body>
            <% String id=request.getParameter("delete"); try{ Class.forName("com.mysql.jdbc.Driver"); Connection
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdatabase","root","g opi2627");
                Statement st=con.createStatement(); int i=st.executeUpdate("delete from addresses where id="+id);

out.println(" Data Deleted Successfully"); }catch(Exception e){ out.println(e); } %>
        </body>

        </html>