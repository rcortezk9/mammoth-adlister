<%--
  Created by IntelliJ IDEA.
  User: renecortez
  Date: 6/7/17
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String username = "admin";
    String password = "password";
%>

<% request.setAttribute("username", username); %>
<% request.setAttribute("password", password); %>

<c:if test="${param.username == username && param.password == password}">
    <c:redirect url="profile.jsp">

    </c:redirect>
</c:if>

<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>User Login</h2>

    <form class="form-control" method="post" action="/login.jsp">
        <label for="username">Username</label>
        <input id="username" type="text" name="username" placeholder="username">
        <br>

        <label for="password">Username</label>
        <input id="password" type="password" name="password" placeholder="password">
        <br>

        <input type="submit" name="submit" value="Login">
    </form>

</body>
</html>
