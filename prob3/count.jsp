<%@ page import="java.io.*,java.util.*" %>
    <html>

    <head>
        <title>Application object in JSP</title>
    </head>

    <body>
        <% Integer hitsCount=(Integer)application.getAttribute("hitCounter"); if( hitsCount==null || hitsCount==0 ) {
            out.println("Welcome!"); hitsCount=1; } else { out.println("Welcome!"); hitsCount +=1; }
            application.setAttribute("hitCounter", hitsCount); %>
            <center>
                <p>Total number of visits:
                    <%= hitsCount%>
                </p>
            </center>
    </body>

    </html>