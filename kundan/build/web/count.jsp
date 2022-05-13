<%-- 
    Document   : count.jsp
    Created on : May 13, 2022, 10:05:50 AM
    Author     : 21mx110
--%>

<%@ page import="java.io.*,java.util.*" %>
<!doctype html>
<html lang="en">

    <head>
        <title>Visit Count</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
          
        </style>
    </head>

    <body class="bg-dark bg-gradient">
        <div class="container bg-dark bg-gradient">
            <div class="row d-flex" style="width:100%;height: 98vh;align-items: center;">
                <div class="card" style="width:100%;height: 20vh;">
                    <center class="card-body">
                        <% Integer hitsCount = (Integer) application.getAttribute("hitCounter");
                            String name = request.getParameter("name");
                            if(name == null){
                                name = "Anynomous User";
                            }
                            if (hitsCount == null) {
                                out.println("Welcome "+name+", you our the first visitor!");
                                hitsCount = 1;
                            } else {
                                hitsCount += 1;
                                out.println("Welcome "+name+", you are the " + hitsCount + " visitor");
                            }
                            application.setAttribute("hitCounter", hitsCount);%>
                    </center>
                </div>  
            </div>
        </div>
    </body>

</html>