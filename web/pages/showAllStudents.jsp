<%@ page import="test.model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: olbe0615
  Date: 17.02.2020
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<% String g = "Good"; %>

<div>
    students <br/>
    <%--<% List<Student> listStudent = (List<Student>) session.getAttribute("student");%>
    <% for (Student student: listStudent ) {%>
    <input  type="checkbox"  name="student" id="<%= student.getId()%>" value="<% student.getId();%>"/> <br/>
    <% }%>--%>

    <%

        /*List<Student> students = (List<Student>) request.getAttribute("student");*/
        List<Student> studentList = (List<Student>) session.getAttribute("studentList");

        if (studentList != null) {
            out.println("<ui>");
            for (Student student : studentList) {
                //out.println("<li>" + student.getId() + "</li>");
    %>

    <input type="checkbox" name="student" id="<%= student.getId()%>" value="<%=student.getId()%>"><%= student.getName()%><br/>
    <%--<br/>--%>
    <%--<li> <%= student.getId()%> </li>--%>
    <%
            }
            out.println("</ui>");
        } else {
            out.println("<p>There are no users yet!</p>");
        }
    %>
    <%=g%>
</div>
</body>
</html>

<% g = g+" Morning"; %>
<%=g%>
