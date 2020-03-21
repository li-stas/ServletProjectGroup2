<%--
  Created by IntelliJ IDEA.
  User: olbe0615
  Date: 17.02.2020
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <form name="userForm" action="${pageContext.request.contextPath}/test?action=mainPage" method="post">
        <input type="text" name="userName" value="" placeholder="Enter your name" size="20"/>
        Enter name: <input type="submit" value="Enter"/>
    </form>
</body>
</html>
