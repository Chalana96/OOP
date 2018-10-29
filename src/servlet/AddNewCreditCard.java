package servlet;

import java.awt.Frame;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Database.DBConnect;
import Utils.UtilValidate;

/**
 * Servlet implementation class AddNewCreditCard
 */
@WebServlet("/AddNewCreditCard")
public class AddNewCreditCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewCreditCard() {
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
		doGet(request, response);
		
		String cardNo = request.getParameter("cardnumber");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String securityCode = request.getParameter("securityCode");
		String email = request.getParameter("userId");
		
		if(!UtilValidate.isValidCardNumber(cardNo)) {
			JOptionPane.showMessageDialog(null,"Invalid Card Number");
		}
		else if(!UtilValidate.isValidMonth(month)) {
			JOptionPane.showMessageDialog(null,"Invalid Month");
		}
		else if(!UtilValidate.isValidSecurityNumber(securityCode)) {
			JOptionPane.showMessageDialog(null,"Invalid Security Code");
		}
		else if(!UtilValidate.isValidYear(year)) {
			JOptionPane.showMessageDialog(null,"Invalid Year");
		}
		else {
			
			try {
				
				DBConnect db = new DBConnect();
				String q = "INSERT INTO `updatecarddetails`(`VEmail`, `cardType`, `cardNumber`, `expires`, `cvv`) VALUES ('"+email+"','CREDIT','"+cardNo+"','"+month+ " / "+year +"','"+securityCode+"')";
				System.out.println(q);
				db.st.executeUpdate(q);
				JOptionPane.showMessageDialog(null, "Card inserted Successfully");
				response.sendRedirect("PaymentMethod.jsp");
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}

}
