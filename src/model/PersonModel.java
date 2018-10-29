package model;

public class PersonModel extends AbstractModel {
	
	private int VId;
	private String VCname;
	private String VEmail;
	private String VAddress;
	private String VPhoneNo;
	
	
	
	
	/**
	 * @return the vId
	 */
	public int getVId() {
		return VId;
	}




	/**
	 * @param vId the vId to set
	 */
	public void setVId(int vId) {
		VId = vId;
	}




	/**
	 * @return the vCname
	 */
	public String getVCname() {
		return VCname;
	}




	/**
	 * @param vCname the vCname to set
	 */
	public void setVCname(String vCname) {
		VCname = vCname;
	}




	/**
	 * @return the vEmail
	 */
	public String getVEmail() {
		return VEmail;
	}




	/**
	 * @param vEmail the vEmail to set
	 */
	public void setVEmail(String vEmail) {
		VEmail = vEmail;
	}




	/**
	 * @return the vAddress
	 */
	public String getVAddress() {
		return VAddress;
	}




	/**
	 * @param vAddress the vAddress to set
	 */
	public void setVAddress(String vAddress) {
		VAddress = vAddress;
	}




	/**
	 * @return the vPhoneNo
	 */
	public String getVPhoneNo() {
		return VPhoneNo;
	}




	/**
	 * @param vPhoneNo the vPhoneNo to set
	 */
	public void setVPhoneNo(String vPhoneNo) {
		VPhoneNo = vPhoneNo;
	}




	@Override
	public String toString() {
		return "PersonModel [VId =" + VId + ", Name =" + VCname + ", Email =" + VEmail + ", Address =" + VAddress + ", phoneNo ="
				+ VPhoneNo+ "]";
	}

}
