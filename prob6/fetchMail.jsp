<%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
        <%@page import="java.sql.DriverManager" %>
            <%@page import="java.sql.Connection" %>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

                    <title>Search</title>
                </head>

                <body>
                    <table>
                        <tr>
                            <td>NAME</td>
                            <td>EMAIL</td>
                            <td>ROLL NUMBER</td>
                        </tr>
                        <% try { String id=request.getParameter("rollno"); //String rollno="Madhumitha" ;
                            Class.forName("com.mysql.jdbc.Driver"); Connection
                            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","g opi2627");
                            Statement stmt=con.createStatement(); ResultSet rs=stmt.executeQuery("select * from data
                            where id="+id);
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td>
                                    <%=rs.getString(" name") %>
                            </td>
                            <td>
                                <%=rs.getString("email") %>
                            </td>
                            <td>
                                <%=rs.getString("roll_no") %>
                            </td>
                            </tr>
                            <% } %>
                    </table>

                    <% rs.close(); stmt.close(); con.close(); } catch(Exception e) { e.printStackTrace(); } %>
                </body>

                </html>