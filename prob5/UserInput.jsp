<%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.Connection" %>
            <%@page import="java.sql.ResultSet" %>
                <%@page contentType="text/html" pageEncoding="UTF-8" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <title>sort</title>
                    </head>
                    <form method="POST" action="sort.jsp">

                        <body>
                            <center>
                                <h1> sort the names</h1>
                                <table>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" value="Ascending"></td>
                                    </tr>
                                </table>
                            </center>
                    </form>
                    </body>

                    </html>