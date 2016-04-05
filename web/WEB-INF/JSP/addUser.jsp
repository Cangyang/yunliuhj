<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/18 0018
  Time: 上午 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>添加用户</title>
    <script type="text/javascript" src="JS/jquery-1.7.1.js"></script>
    <script type="text/javascript">
        function addUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>addUser";
            form.method="post";
            form.submit();
        }
    </script>

</head>

<body>
<h1>添加用户</h1>
<form action="" name="userForm">
    姓名：<input type="text" name="userName">
    密码：<input type="text" name="password">
    <input type="button" value="添加" onclick="addUser()">
</form>
</body>
</html>
