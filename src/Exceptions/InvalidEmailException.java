package Exceptions;

import javax.swing.JOptionPane;

public class InvalidEmailException extends Exception {
	
	private String email;
	
	public InvalidEmailException(String email) {
		
		this.email = email;
				
	}
	public void printMessage() {
		
		JOptionPane.showMessageDialog(null,email + " is invalid. Please sign up or input correct email");
		
	}
	

}
