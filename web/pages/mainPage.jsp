<%--
  Created by IntelliJ IDEA.
  User: olbe0615
  Date: 17.02.2020
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Main</title>
</head>
<body>
<div>
    Hello, <%= session.getAttribute("userName")%>
</div>
<div>
    <a href="${pageContext.request.contextPath}/test?action=logOut">
        Exit
    </a>
</div>

<div>
    <% String includedPage = (String) session.getAttribute("includedPage");%>
    <% if (!includedPage.isEmpty()) {  %>
    <jsp:include page="<%= includedPage %>">
        <jsp:param name="username" value="marcus"/>
    </jsp:include>
    <% }  %>
</div>

<%--<c:set var="username" value="marcus" />
<div>
    <jsp:include page="includePage.html">
        <jsp:param name="username" value="${username}"/>
    </jsp:include>
</div>--%>

<%
    out.print("includedPage -> " + session.getAttribute("includedPage"));
    out.print("; username -> " + request.getParameter("username"));
%>

<div>
    <a href="${pageContext.request.contextPath}/test?action=showAllStudents">Students</a>
</div>

</body>
</html>
