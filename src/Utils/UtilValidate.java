package Utils;

public class UtilValidate {

	
	public static boolean isValidCardNumber(String cardNo) {
		
		if(cardNo.length() == 16) {
			return true;
		}else {
			return false;
		}
	}
	public static boolean isValidSecurityNumber(String securityNumber) {
		
		return securityNumber.length() == 3;
		
	}
	
	public static boolean isValidMonth(String month) {
		
		int months = Integer.parseInt(month);
		
		return months > 0 && months < 13;
		
	}
	public static boolean isValidYear(String year) {
		
		int years = Integer.parseInt(year);
		return years < 2018 && years < 2999;
	}
}
