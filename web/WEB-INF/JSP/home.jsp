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

    <title>微信寄件</title>
    <!-- Bootstrap -->
    <link href="UI/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="UI/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="CSS/bootstrap-treeview.css" rel="stylesheet">
    <link href="CSS/common.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="JS/html5shiv.min.js"></script>
    <script src="JS/respond.min.js"></script>

    <![endif]-->


</head>

<body>
<div class="wraper">
    <nav class="navbar " role="navigation">
        <div class="page-header">
            <h1>微信寄件管理系统</h1>
        <ul class="nav navbar-right top-nav">

        </ul>
        </div>
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3" >
                    <div class="context-menu" id="treeview"></div>
                </div>
                <div class="col-lg-9 tab-content" id="tabs">
                    <ul class="nav nav-tabs" role="tablist" id="tab-list"></ul>
                    <div class="tab-content" id="tab-content"></div>
                </div>
            </div>
        </div>
    </div>

</div>
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="UI/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript" src="JS/bootstrap-treeview.js"></script>
<script type="text/javascript">
    var alternateData = [
        {
            text: '系统管理',
            icon: 'glyphicon glyphicon-cog',
            tags: ['1'],
            nodes: [
                {
                    text: '用户管理',
                    tags: ['11'],
                    url:'test'
                },
                {
                    text: '权限管理',
                    tags: ['12'],
                    url:'toAddUser'
                },
                {
                    text: '用户组管理',
                    tags: ['13'],
                    url:'toAddUser'
                },
                {
                    text: '菜单管理',
                    tags: ['14'],
                    url:'toAddUser'
                },
                {
                    text: '系统日志',
                    tags: ['15'],
                    url:'toAddUser'
                },
                {
                    text: '区域管理',
                    tags: ['16']
                },
                {
                    text: '优惠设置',
                    tags: ['17']
                },
                {
                    text: '系统设置',
                    tags: ['18']
                }
            ]
        },
        {
            text: '用户管理',
            icon: 'glyphicon glyphicon-user',
            tags: ['2'],
            nodes: [
                {
                    text: '寄件用户管理',
                    tags: ['21']
                },
                {
                    text: '收件员管理',
                    tags: ['22']
                }
            ]
        },
        {
            text: '订单管理',
            icon: 'glyphicon glyphicon-list-alt',
            tags: ['3'],
            nodes: [
                {
                    text: '全部订单',
                    tags: ['31']
                },
                {
                    text: '已取消订单',
                    tags: ['32']
                }
            ]
        },
        {
            text: '快递公司管理',
            icon: 'glyphicon glyphicon-globe',
            tags: ['4'],
            selected: true,
            nodes: [
                {
                    text: '公司管理',
                    tags: ['41'],
                    href:"www.baidu.com"
                },
                {
                    text: '费用管理',
                    tags: ['42']
                }
            ]
        }
    ];

    $('#treeview').treeview({
        expandIcon: "glyphicon glyphicon-Chevron-up",
        collapseIcon: "glyphicon glyphicon-Chevron-down",
        nodeIcon: "glyphicon glyphicon-leaf",
        color: "cornsilk",
        backColor: "cadetblue",
        onhoverColor: "darkseagreen",
        borderColor: "red",
        showBorder: false,
        showTags: false,
        highlightSelected: true,
        selectedColor: "darkgoldenrod",
        selectedBackColor: "darkseagreen",
        data: alternateData
    });
</script>
<script type="text/javascript">
    $(function(){
        $('#tabs').addtabs({monitor:'.treeview'});
    })
</script>
</body>
</html>
