package com.tikkit.book;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookTicketServlet
 */
@WebServlet("/bookplaneticket")
public class BookTicketPlane extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String ticket_type = request.getParameter("ticket_type");
		String starting_point = request.getParameter("starting_point");
		String ending_point= request.getParameter("ending_point");
		String travel_date = request.getParameter("travel_date");
		RequestDispatcher dispatcher = null; 
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket_db", "root", "admin");
			PreparedStatement pst = con.prepareStatement("insert into tickets(username,ticket_type,starting_point,ending_point,travel_date) values(?,?,?,?,?)");
			pst.setString(1, username);
			pst.setString(2, ticket_type);
			pst.setString(3, starting_point);
			pst.setString(4, ending_point);
			pst.setString(5, travel_date);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("train.jsp");
			
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
