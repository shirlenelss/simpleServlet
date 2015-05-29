package org.shirlene;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class XMLServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username = request.getParameter("username");
		PrintWriter printwriter = response.getWriter();
		System.out.println("hello "+ username + " from XMLServlet GET");
		HttpSession session = request.getSession();
		session.setAttribute("savedUserName", username);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username  = request.getParameter("username");
		String fullname  = request.getParameter("fullname");
		PrintWriter printwriter = response.getWriter();
		printwriter.println("Hello "+ username + 
				"<br>We know your fullname is " +fullname 
				+"<br>This message is from XMLServlet: HTTP Method : POST");
		
		String prof = request.getParameter("prof");
		printwriter.println("<br>  You are a "+ prof);
		
		String[] location = request.getParameterValues("location");
		if (location != null && location.length > 0) {
			printwriter.println("<br> You are at "+ location.length + "places");
			for (int i = 0 ;i<=location.length-1;i++){
				printwriter.println("<br>" + location[i].toString());
			}
		} else {
			printwriter.println("<br> no location selected");
		}
	}


}
