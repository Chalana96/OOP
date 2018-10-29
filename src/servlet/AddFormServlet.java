package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PersonModel;
import service.IuserService;
import service.IuserServiceImpl;

/**
 * Servlet implementation class AddFormServlet
 */
@WebServlet("/AddFormServlet")
public class AddFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//Set Content Type
		response.setContentType("text/html");
		//Create object 
		PersonModel usr	=	new PersonModel();
		//Add data 
		usr.setVCname(request.getParameter("name"));
		usr.setVCname(request.getParameter("name"));
		usr.setVCname(request.getParameter("name"));
		usr.setVCname(request.getParameter("name"));
		//usr.setId(request.getParameter("id"));
		/***should finish interface first***/
		
		IuserService iuserService = new IuserServiceImpl();
		iuserService.addUser(usr);
		
	/*	request.setAttribute("std", std);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListStudent.jsp");
		dispatcher.forward(request, response);*/
		
		
		
		
		
	
	
	
	
	}

}
