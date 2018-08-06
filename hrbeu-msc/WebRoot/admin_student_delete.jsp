<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href ="<%=basePath%>" >
    <title>学生成绩管理系统</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <link href="style/main_admin.css" type="text/css" rel="stylesheet">

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
					<a class="index" href="admin_index.jsp">首页</a>
				</li>
				<li>
					<a href="admin_student.jsp">学生管理</a>
				</li>
				<li>
					<a href="admin_teacher.jsp">教师管理</a>
				</li>
				<li>
					<a href="admin_subject.jsp">课程管理</a>
				</li>
				<li>
					<a href="admin_grade.jsp">成绩管理</a>
				</li>
				<li>
					<a href="admin_password.jsp">修改密码</a>
				</li>
			</ul>
		</div>
    	<div class="main">
    		<div class="nav nav-cls2 left">
				<h3></h3>
				<ul>
					<li><a href="admin_student_query.jsp">查看学生信息</a></li>
					<li><a href="admin_student_add.jsp">添加学生信息</a></li>
					<li><a href="admin_student_update.jsp">修改学生信息</a></li>
					<li><a href="admin_student_delete.jsp">删除学生信息</a></li>
				</ul>
			</div>
    		<div class="center">
				<h3>删除学生信息</h3>
				<form action="student_deleteStu.do">
					<div>
						<label>学号：</label>
						<input type="text" name="stu_no" placeholder="输入学号">
					</div>
    				<div>
						<button type="submit">确认删除</button>
					</div>
				</form>
			</div>	
			<p id="status" style="display:none;">${status}</p>
					<script type="text/javascript">
						var status = document.getElementById('status').innerText;
						if(status=="successful"){
							alert(status);}
						else if (status=="failed"){
							alert(status);
						}
					</script>
    	</div>
    	<div class="footer">版权所有&copy;中软国际&amp;哈尔滨工程大学</div>
    </div>
  </body>
</html>
