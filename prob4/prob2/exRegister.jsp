<%-- Document : exRegister Created on : 29 Jan, 2021, 6:05:15 AM Author : MADHUMITHA --%>
    <%@page import="java.sql.Statement" %>
        <%@page import="java.sql.DriverManager" %>
            <%@page import="java.sql.Connection" %>

                <%@page contentType="text/html" pageEncoding="UTF-8" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <title>Insert</title>
                    </head>

                    <body>
                        <% String fname=request.getParameter("fname"); String lname=request.getParameter("lname");
                            String telephone=request.getParameter("tele"); String mobile=request.getParameter("mobile");
                            String email=request.getParameter("email"); String address=request.getParameter("address");
                            String pincode=request.getParameter("pincode"); String city=request.getParameter("city");
                            String country=request.getParameter("country"); try{ Class.forName("com.mysql.jdbc.Driver");
                            Connection
                            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdatabase","root","gopi262
                            7"); Statement st=con.createStatement(); st.executeUpdate("insert into
                            addresses(fname,sname,telephone,mobile,email,address,pincode,town,country)values('"+fname+ "','"
                            +lname+"','"+telephone+"','"+mobile+"','"+email+"','"+address+"','"+pincode+"','"+city+"','"+
                            country+"')"); out.println("Data Inserted Successfully"); }catch(Exception e){
                            out.println(e); } %>
                    </body>

                    </html>