<%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
        <%@page import="java.sql.DriverManager" %>
            <%@page import="java.sql.Connection" %>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                    <title>Insert</title>
                </head>

                <body>
                    <center>
                        <h1> Names sorted in Ascending order</h1>
                        <table>
                            <% try { Class.forName("com.mysql.jdbc.Driver"); Connection
                                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root"
                                , "gopi2627" ); Statement stmt=con.createStatement(); String
                                query="select * from data order by name" ; ResultSet rs=stmt.executeQuery(query); while
                                (rs.next()) { %>
                                <tr>
                                    <td>
                                        <%=rs.getString("name")%>
                                    </td>
                                </tr>
                                <% } %>

                        </table>
                        <% rs.close(); stmt.close(); con.close(); } catch (Exception e) { e.printStackTrace(); } %>
                    </center>
                </body>

                </html>