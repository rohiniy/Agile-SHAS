package com.utd.shas;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init(){
	}
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res){
		
		PrintWriter out= null;
		String userId= req.getParameter("userId");
		String password=req.getParameter("pwd");
		
		try{
			if(userId.equals("Admin") && password.equals("admin")){
				HttpSession session=req.getSession(true);
				session.setAttribute("FirstName",userId);
				System.out.println("Success");
				//RequestDispatcher rd = req.getRequestDispatcher("./LoginSuccess.jsp");
				//rd.forward(req, res); 
				
				res.sendRedirect("./LoginSuccess.jsp");
				}else{
				System.out.println("in fail");
				RequestDispatcher rd = req.getRequestDispatcher("./LoginForm.jsp");
				out = res.getWriter();
				out.print("<p style=\"color:red\">Sorry username or password is invalid</p>");
				rd.include(req, res);
			}
		}
		catch (IOException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}
		catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			if(out!=null)
				out.close();
		}
	}
}
