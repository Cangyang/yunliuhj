<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/17 0017
  Time: 下午 10:47
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
    <script type="text/javascript" src="JS/jquery-1.7.1.js"></script>
    <title>测试页面</title>


</head>

<body>
<h6><a href="<%=basePath%>user/toAddUser">测试页面</a></h6>


</body>
</html>
