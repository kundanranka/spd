<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset-UTF-8">
        <title>Insert</title>
    </head>

    <body>
        <center>
            <hl>User Details</hl>
            <form method="POST" action="exRegister.jsp">
                <table>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" /><br /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="Iname" /></td>
                    </tr>
                    <tr>
                        <td>Telephone Number</td>
                        <td><input type="text" name="tele" /></td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td><input type="text" name="mobile" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" /></td>
                    </tr>
                    <tr>
                        <td>Pincode</td>
                        <td><input type="text" name="pincode" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" /></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td><input type="text" name="country" /></td>
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