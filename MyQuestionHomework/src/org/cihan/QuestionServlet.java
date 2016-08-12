package org.cihan;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/question")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Question question = new Question();
		
		question.setTitle(request.getParameter("title"));
		question.setText(request.getParameter("text"));
		question.setScore(Integer.parseInt(request.getParameter("score")));
		
		
		
		
		HttpSession session = request.getSession();
		
		/*ArrayList<Question> qList = new ArrayList<>();
		
		if(!session.isNew())
			qList.add(question);
		
		request.setAttribute("question", qList);*/
		
		if (session.getAttribute("qlist") == null) {
			List<Question> list = new ArrayList<>();
			
			session.setAttribute("qlist", list);
			
		}
		List<Question> list = (List)session.getAttribute("qlist");
		list.add(question);
		
		getServletContext().getRequestDispatcher("/questionlist.jsp").forward(request, response);
		
		
		/*
		 ***** 	Title + Text Area + Score(combobox=1,2,3,4,5,6,7,8,9,10) + OK button
		 *  Question obj => id, createDate, score, textarea, title
		 * Servlet => sistem id'yi otomatik random atasın. 
		 * createDate = Sistem tarihi atansın.
		 * 
		 * questionlist.jsp
		 *        ---
		 * id - title - text - score (HTML-Table)
		 * --------------------------------------
		 * 
		 * 
		 * */
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
