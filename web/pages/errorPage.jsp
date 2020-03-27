<%--
  Created by IntelliJ IDEA.
  User: olbe0615
  Date: 24.02.2020
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>

    <%= exception.getStackTrace() %>

</body>
</html>
