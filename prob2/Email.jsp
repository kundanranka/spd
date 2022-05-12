<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>email</title>
    </head>

    <body>
        <center>
            <h1>User Details</h1>
            <form method="POST" action="fetchemail.jsp">
                <table>
                    <tr>
                        <td>Roll Number</td>
                        <td><input type="text" name="rollno" /><br /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>

    </html>