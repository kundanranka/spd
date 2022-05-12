<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Addition</title>
    </head>

    <body>
        <center>
            <h3> Addition ofanumber </h3>
            </br>
            <% int first=Integer.parseInt(request.getParameter("t1")); int
                second=Integer.parselnt(request.getParameter("t2")); int res=first+second; out.println(res); %>
        </center>
    </body>

    </html>