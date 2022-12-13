<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 11.12.2022
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>listShow</title>
</head>
<body>
<div>
<h2>Welcome <%= request.getAttribute("login") %></h2>
</div>
</div>
<%
    List<String> users = (List<String>) request.getAttribute("login");

    if (users != null && !users.isEmpty()) {
        out.println("<ui>");
        for (String s : users) {
            out.println("<li>" + s + "</li>");
        }
        out.println("</ui>");
    } else out.println("<p>There are no users yet!</p>");
%>
</div>

    <div>
        <button onclick="location.href='/'">Back to main</button>
    </div>

</body>
</html>
