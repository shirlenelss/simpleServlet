package org.shirlene;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
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
				"/ServeMePath"
		})
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello from get method");
		PrintWriter printwriter = response.getWriter();
		printwriter.println("<h3>hello from get method<h3>");
		printwriter.println("method " + request.getMethod().toString());
		//printwriter.println("RequestedSession " + request.getRequestedSessionId().toString());
	}

}