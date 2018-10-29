package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Database.DBConnect;
import Exceptions.InvalidEmailException;

/**
 * Servlet implementation class valLogin
 */
@WebServlet("/valLogin")
public class valLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public valLogin() {
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
		
		doGet(request, response);
		try {
			 String mail = request.getParameter("uname");
			String email = null;
			String name = null;
			System.out.println(mail);
				DBConnect db = new DBConnect();
				db.rs = db.st.executeQuery("select * from customer where VEmail = '"+mail+"' ");
			 if (!db.rs.next())
			 {
				 throw new InvalidEmailException(mail);
			 }
			 else
			 {
				 do
				 {
					email = db.rs.getString("VEmail");
					name = db.rs.getString("VCname");

				 } while (db.rs.next());
				 System.out.println(name );
				 
				 if(email.equals(mail))
				 {
					 HttpSession session = request.getSession();
					 session.setAttribute("mail", mail);
					 session.setAttribute("name", name);
					 response.sendRedirect("First.jsp");

				 }
			 }
			   
			    
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(InvalidEmailException ex) {
			ex.printMessage();
		}
	
		
	}

}
