package org.shirlene;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet(
		description = "A simple sevlet", 
		urlPatterns = { 
				"/SimpleServletPath", 
				"/ServeMePath"},
		initParams=@WebInitParam(name="defaultUser", value="John Doe"))
//@WebInitParam can be configured in xml format too.....

public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(){
		System.out.println("init = " + this.getServletConfig().getInitParameter("defaultUser"));
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello from get method<br>");
		PrintWriter printwriter = response.getWriter();
		printwriter.println("<h3>hello from get method<h3><br>");
		printwriter.println("method " + request.getMethod().toString());
	}

}
