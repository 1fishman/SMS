<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href = >
    <title>学生成绩管理系统</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <link href="style/main_student.css" type="text/css" rel="stylesheet">

  </head>
  
  <body>
    <div class="container">
    	<div class="header">
    		<img alt="" src="image/xiaohui2.png" width= "100px" height= "100px">
    		<form action = "destroySession.do">
    			<button type="submit" >退出系统</button>
    		</form>
    	</div>
    	<div class="nav nav-cls1">
			<ul>
				<li>
					<a class="index" href="student_index.jsp">首页</a>
				</li>
				<li>
					<a href="student_index.jsp" title="没有访问权限">学生管理</a>
				</li>
				<li>
					<a href="student_index.jsp" title="没有访问权限">教师管理</a>
				</li>
				<li>
					<a href="student_subject.jsp">课程管理</a>
				</li>
				<li>
					<a href="student_grade.jsp">成绩管理</a>
				</li>
				<li>
					<a href="student_password.jsp">修改密码</a>
				</li>
			</ul>
		</div>
    	<div class="main">
    		<div class="nav nav-cls2 left">
				<h3></h3>
				<ul>
					<li><a href="student_grade.jsp">查询成绩信息</a></li>
					<li><a href="student_subject.jsp">查询课程信息</a></li>
					<li><a href="student_password.jsp">修改密码</a></li>
				</ul>
			</div>
    		<div class="center">
				<h1>欢迎使用中软&amp;哈工程学生成绩管理系统!</h1>
			</div>	
    	</div>
    	<div class="footer">版权所有&copy;中软国际&amp;哈尔滨工程大学</div>
    </div>
  </body>
</html>
