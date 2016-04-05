<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/6 0006
  Time: 下午 6:44
  To change this template use File | Settings | File Templates.
  http://www.cnblogs.com/HD/p/4123764.html
  http://liuzidong.iteye.com/blog/1051760
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.cn.yunliuhj.pojo.Account" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="st" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>微信寄件后台管理系统</title>


  <!-- Bootstrap -->
  <link href="UI/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="JS/html5shiv.min.js"></script>
  <script src="JS/respond.min.js"></script>
  <![endif]-->
<style type="text/css">
  html,body {
    height: 100%;
  }
  .box {
    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
    background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
    background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
    background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
    background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
    background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);

    margin: 0 auto;
    position: relative;
    width: 100%;
    height: 100%;
  }
  .login-box {
    width: 100%;
    max-width:500px;
    height: 400px;
    position: absolute;
    top: 50%;

    margin-top: -200px;
    /*设置负值，为要定位子盒子的一半高度*/

  }
  @media screen and (min-width:500px){
    .login-box {
      left: 50%;
      /*设置负值，为要定位子盒子的一半宽度*/
      margin-left: -250px;
    }
  }

  .form {
    width: 100%;
    max-width:500px;
    height: 275px;
    margin: 25px auto 0px auto;
    padding-top: 25px;
  }
  .login-content {
    height: 300px;
    width: 100%;
    max-width:500px;
    background-color: rgba(255, 250, 2550, .6);
    float: left;
  }


  .input-group {
    margin: 0px 0px 30px 0px !important;
  }
  .form-control,
  .input-group {
    height: 40px;
  }

  .form-group {
    margin-bottom: 0px !important;
  }
  .login-title {
    padding: 20px 10px;
    background-color: rgba(0, 0, 0, .6);
  }
  .login-title h1 {
    margin-top: 10px !important;
  }
  .login-title small {
    color: darkkhaki;
    font-size: larger;
    font-style: oblique;
  }

  .link p {
    line-height: 20px;
    margin-top: 30px;
  }
  .btn-sm {
    padding: 8px 24px !important;
    font-size: 16px !important;
  }
</style>

</head>

<body>
<div class="box">
  <div class="login-box">
    <div class="login-title text-center">
      <h1><small>微信寄件后台管理系统</small></h1>
    </div>
    <div class="login-content ">
      <div class="form">
        <form method="post" id="loginForm" name="loginForm">
          <div class="form-group">
            <div class="col-xs-12  ">
              <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                <input type="text" id="loginName" name="loginName" class="form-control" placeholder="用户名">
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-xs-12  ">
              <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                <input type="password" id="accountPwd" name="accountPwd" class="form-control" placeholder="密码">
              </div>
            </div>
          </div>
          <div class="form-group form-actions">
            <div class="col-xs-4 col-xs-offset-4 ">
              <button type="submit" class="btn btn-sm btn-info" onclick="login()"><span class="glyphicon glyphicon-off"></span> 登录</button>
            </div>
          </div>

          <div class="form-group">
            <div class="col-xs-6 link">
              <p class="text-center remove-margin"><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
              </p>
            </div>
            <div class="col-xs-6 link">
              <p class="text-center remove-margin"><small>还没注册?</small> <a href="javascript:void(0)" ><small>注册</small></a>
              </p>
            </div>
            <div class="col-xs-12 alert alert-danger"><Strong></Strong>${message}</div>
          </div>


        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="JS/jquery-2.1.4.min.js"></script>
<script src="UI/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
  function login(){
    if(validation()){
      var url = "<%=basePath%>login";
      $("#loginForm").attr("action",url);
    } else {
      return false;
    }
  }
  function validation(){
    var name = $("#loginName");
    var pwd = $("#accountPwd");
    if(name.val() == ''){
      alert("请输入用户名！");
      name.focus();
     return false;
    }
    if(pwd.val() == ''){
      alert("请输入登陆密码！");
      pwd.focus();
      return false;
    }
    return true;
  }
</script>
</body>
</html>
