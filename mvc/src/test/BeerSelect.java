package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class BeerSelect extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String color = req.getParameter("color");
		
		
		
		req.setAttribute("color", color);
		
		//req.removeAttribute("email");//이건 왜 안 지워지지 
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("selectbeer.jsp");
		dispatcher.forward(req, resp);
	}}