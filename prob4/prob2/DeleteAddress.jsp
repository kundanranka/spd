<%-- Document : exRegister Created on : 29 Jan, 2021, 6:05:15 AM Author : MADHUMITHA --%>
    <%@page import="java.sql.ResultSet" %>
        <%@page import="java.sql.Statement" %>
            <%@page import="java.sql.DriverManager" %>
                <%@page import="java.sql.Connection" %>
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                        <title>Delete</title>
                    </head>

                    <body>
                        <table border="1">
                            <tr>
                                <td>ID</td>
                                <td>FIRST NAME</td>
                                <td>SUR NAME</td>
                                <td>TELEPHONE</td>
                                <td>MOBILE NUMBER</td>
                                <td>EMAIL</td>
                                <td>ADDRESS</td>
                                <td>PINCODE</td>
                                <td>TOWN</td>
                                <td>COUNTRY</td>
                            </tr>
                            <% try { Class.forName("com.mysql.jdbc.Driver"); Connection
                                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdatabase","root","g
                                opi2627"); Statement stmt=con.createStatement(); String query="select * from addresses"
                                ; ResultSet rs=stmt.executeQuery(query); while(rs.next()) { %>
                                <tr>
                                    <td>
                                        <%=rs.getInt("id") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("fname") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("sname") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("telephone") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("mobile") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("email") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("address") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("pincode") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("town") %>
                                    </td>
                                    <td>
                                        <%=rs.getString("country") %>
                                    </td>
                                </tr>
                                <%} %>
                        </table>
                        <% rs.close(); stmt.close(); con.close(); } catch(Exception e) { e.printStackTrace(); } %>
                            <form method="post" action="exDelete.jsp">
                                Enter ID to be deleted <br>
                                <input type="text" name="delete" />
                                <br><br>
                                <input type="submit" value="Delete" />
                            </form>
                    </body>

                    </html>