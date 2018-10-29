package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DBConnect;
import model.PersonModel;
import service.IuserService;
import service.IuserServiceImpl;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
//	int c=0;
//		
//		response.setContentType("text/html");
//		
//		
//		c = Integer.parseInt(request.getParameter("id").toString());
//		
//		
//		IuserService user = new IuserServiceImpl();
//		PersonModel usr = new PersonModel();
//		
//		usr = user.checkUser(c);
//		
//	
//			System.out.println("correct"+usr.getVCname());
//		
//		
//		
//		
//		
//		
//		
//		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String name = "",address = "",phoneNo = "",email1 = "";
		
		String email = request.getParameter("email");
		DBConnect db = new DBConnect();
		
		try {
			db.rs = db.st.executeQuery("select * from customer where VEmail = '"+email+"'");
			while(db.rs.next())
			{
				name = db.rs.getString("VCname");
				address = db.rs.getString("VAddress");
				email = db.rs.getString("VEmail");
				phoneNo = db.rs.getString("VPhoneNo");
				 	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("Payment.jsp?name="+name+"&address="+address+"&email="+email+"&phoneNo="+phoneNo+"&email="+email+"");
		
		
					
	}

}
