<%@ page language="java" contentType="text/html; charset=ISO
pageEncoding=" ISO-8859-1"%>
    <!DOCTYPE html> Responding to a User Request

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" 1"%>

        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>User Input</title>
        </head>

        <body>
            <form method="POST" action="RandomNumber.jsp">
                N<sub>trial</sub> <input type="text" name="trials" /><br /> N
                <sub>min</sub> <input type="text" name="min" /><br /> N
                <sub>max</sub> <input type="text" name="max" /><br /><br />
                <button type="submit">Submit</button>
            </form>
        </body>

        </html>