<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href=>
<title>登录学生成绩管理系统</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="favicon.ico" />
<link href="style/main_login.css" type="text/css" rel="stylesheet">

</head>

<body>
	<div class="container">
		<div class="main">
			<div class="left">
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎使用中软&amp;哈工程学生成绩管理系统</h1>
				<img class="pic1" alt="" src="image/xiaohui2.png" width="80px">
				<img class="pic2" alt="" src="image/login_school.jpg" width="608px">
			</div>
			<div class="center">
				<img alt="" src="image/login_up.png" width="422px" />
				<form id="form" action="login">
					<div>
						<label>帐&nbsp;号：&nbsp;</label> <input type="text" name="id"
							placeholder="输入账号">
					</div>
					<div>
						<label>密&nbsp;码：&nbsp;</label> <input type="password"
							name="password" placeholder="输入密码">
					</div>


					<div>
						<label>用户身份：</label> 管理员<input type="radio" name="login"
							value="admin" checked> 教师<input type="radio" name="login"
							value="teacher" checked> 学生<input type="radio"
							name="login" value="student">
					</div>
					<div>
						<button type="submit" id="submitBtn">登录</button>
					</div>
					<br>
				</form>
			</div>
		</div>
		<div class="footer">版权所有&copy;中软国际&amp;哈尔滨工程大学</div>
	</div>
</body>
</html>
