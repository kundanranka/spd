<%@ page language="java" contentType="text/html; charset=ISO
pageEncoding=" ISO-8859-1"%>
    <%@page import="java.util.Random" %>
        <%@page import="java.text.DecimalFormat" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859
<title>Random Number Table</title>
<style>
table, th, td {
border: 1px solid black;
}
table th, table td {
padding-left: 5px;
padding-right:
}
</style>

Generating a Random Number Table

<%@ page language=" java " contentType=" text/html; charset=ISO-8859-1 "

1" %>
                <%@page import="java.util.Random" %>
                    import="java.text.DecimalFormat" %> 8859-1">
                    <title>Random Number Table</title>

                    border: 1px solid black; table th, table td { left: 5px; right: 5px;

            </head>

            <body>
                <table>
                    <tr>
                        <th>Trial 1</th>
                        <th>Trial 2</th>
                        <th>Trial 3</th>
                        <th>Horizontal Sum</th>
                        <th>Horizontal Average</th>
                    </tr>
                    <% float[] rows[]=new float[28][5]; %>
                        <% for(int i=0; i<25; i++) { %>
                            <% float row[]=new float[5]; Random rand=new Random(); row[0]=rand.nextInt(10);
                                row[1]=rand.nextInt(10); row[2]=rand.nextInt(10); row[3]=(row[0] + row[1] + row[2]);
                                //sum row[4]=(row[0] + row[1] + row[2]) / 3; //average rows[i]=row; %>
                                <tr style="background-color: <% if(i % 2 == 0) { %>#A5A5A5<% } else
{ %>lightgray<% } %>;">
                                    <% for(int k=0; k<5; k++) { %>
                                        <td>
                                            <% if(k < 4) { %>
                                                <%= new DecimalFormat("#").format(row[k]) %>
                                                    <% } else { %>
                                                        <%= new DecimalFormat("#.000").format(row[k]) %>
                                                            <% } %>
                                        </td>
                                        <% } %>
                                </tr>
                                <% } %>
                                    <tr style="background-color: lightgray;">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td><strong>Vertical Sum</strong></td>

                                        <td>
                                            <% float sum=0; for(int i=0; i<25; i++) { sum +=rows[i][3]; %>
                                                <% } %>
                                                    <%= new DecimalFormat("#").format(sum) %>
                                        </td>
                                    </tr>
                                    <tr style="background-color: #A5A5A5;">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td><strong>Vertical Average</strong></td>
                                        <td>
                                            <% float avg=0; for(int i=0; i<25; i++) { avg +=rows[i][4]; %>
                                                <% } avg=avg / 25; %>
                                                    <%= new DecimalFormat("#.00").format(avg) %>
                                        </td>
                                    </tr>
                </table>
            </body>

            </html>