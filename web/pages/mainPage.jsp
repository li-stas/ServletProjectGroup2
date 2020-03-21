<%--
  Created by IntelliJ IDEA.
  User: olbe0615
  Date: 17.02.2020
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<div>Hello, <%= session.getAttribute("userName")%></div>
<div><a href="${pageContext.request.contextPath}/test?action=logOut">Exit</a></div>

<div>
    <% String includedPage = (String) session.getAttribute("includedPage");%>
    <% if (!includedPage.isEmpty()) {  %>
    <jsp:include page="<%= includedPage %>"></jsp:include>
    <% }                              %>
</div>

<div><a href="${pageContext.request.contextPath}/test?action=showAllStudents">Students</a></div>

</body>
</html>
