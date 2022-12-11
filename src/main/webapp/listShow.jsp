<%@ page import="java.util.List" %><%--
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

<ul>
    <%
        List<String>logins= (List<String>) request.getAttribute("log");
        if (logins!=null&&!logins.isEmpty()){
            for (String s : logins){
                out.println(("<li>"+s+"<li>"));
            }
        }

    %>
</ul>

</body>
</html>
