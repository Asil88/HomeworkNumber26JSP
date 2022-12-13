<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: Anton
  Date: 11.12.2022
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Registration</title>
</head>
<body>


<div>
    <%
        if (request.getAttribute("login") != null) {
           out.println(request.getAttribute("login"));
        }
    %>
    <div>
        <form method="post">
            <label>Login:
                <input type="text" name="login"><br>
            </label>
            <br>
            <label>Password:
                <input type="password" name="password"><br>
            </label>

            <button type="submit">Submit</button>
        </form>
    </div>
</div>
<div>
    <button onclick="location.href='/'">Back to main</button>
</div>

</body>
</html>
