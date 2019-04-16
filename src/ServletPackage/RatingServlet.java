package ServletPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DatabasePackage.DatabaseInsert;
import DatabasePackage.DatabaseManager;
import EventPackage.Event;

@WebServlet("/RatingServlet")
public class RatingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseManager.checkDatabase();
		String comments = request.getParameter("comments");
		String rating = request.getParameter("rating");
		String username = (String) request.getSession().getAttribute("username");
		int eventID = ((Event)request.getSession().getAttribute("thisEvent")).getEventID();
		
		DatabaseInsert.insertRating(username, eventID, Integer.valueOf(rating), comments);
		
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/ProfilePage.jsp");
		dispatch.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
