package edu.hrbeu.msc.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.manager.util.BaseSessionComparator;

import edu.hrbeu.msc.dao.LoginDao;
import edu.hrbeu.msc.entity.Admin;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession hs = req.getSession();	
		req.setCharacterEncoding("utf-8");
		String userType = req.getParameter("login");
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		LoginDao loginDao = new LoginDao();
		if(userType.equals("admin")){
			Map<String,String> tem = null;
			try {
				tem = loginDao.setAdminSession(id,password,userType);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(tem==null){
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}else{
				hs.setAttribute("userType",userType);
				hs.setAttribute("id", id);
				hs.setAttribute("password", password);
				req.getRequestDispatcher("admin_index.jsp").forward(req, resp);
			}
		}else if(userType.equals("teacher")){
			Map<String,String> tem = null;
			try {
				tem = loginDao.setTeacherSession(id,password,userType);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(tem==null){
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}else{
			hs.setAttribute("userType",userType);
			hs.setAttribute("id", id);
			hs.setAttribute("password", password);
			req.getRequestDispatcher("teacher_index.jsp").forward(req, resp);
			}
		}else{
			Map<String,String> tem = null;
			try {
				tem = loginDao.setStudentSession(id,password,userType);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(tem==null){
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}else{
			hs.setAttribute("userType",userType);
			hs.setAttribute("id", id);
			hs.setAttribute("password", password);
			req.getRequestDispatcher("student_index.jsp").forward(req, resp);
			}
		}
	}
	
}




