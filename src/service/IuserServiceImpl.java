package service;

import java.sql.*;

import java.util.ArrayList;

import model.PersonModel;


public class IuserServiceImpl implements IuserService{
	
	
	public PersonModel  checkUser(int id) {
		
		 int x = 0;
		
		PersonModel usr = new PersonModel();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:6060/accountdetails","root","");
			
		//	PreparedStatement myStmt = myConn.prepareStatement("Select from customer(VCname,VEmail,VAddress,VPhoneNo) where id=?");
			
			PreparedStatement myStmt = myConn.prepareStatement("Select* from customer where id=?");
			
			
			myStmt.setInt(1,id);
			
			ResultSet myRs = myStmt.executeQuery();
					
					while( myRs.next()) {
						
					
						
						usr.setVCname(myRs.getString("VCname"));
						
						
						
						}
					
					
				}catch(Exception  e) {
					System.out.println("Exception : " + e );
				}
				
				return usr;
			}

	

public void updateUser(PersonModel usr) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:6060/accountdetails","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement("UPDATE customer set VCname =?, VEmail=?, VAddress=?,VPhoneNo=? WHERE VId=?");
			
			
			myStmt.setString(1, usr.getVCname());
			myStmt.setString(2, usr.getVEmail());
			myStmt.setString(3, usr.getVAddress());
			myStmt.setString(4, usr.getVPhoneNo());
			
			myStmt.execute();
			
		
		}
		catch (Exception e) {
			
			
			System.out.println("Exception is:"+e);
			
		}
		
		
		
		
	}
		
			
public void addUser( PersonModel usr ) {
	
	try {
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:6060/accountdetails","root","");
		
		
		
		PreparedStatement myStmt = myConn.prepareStatement("INSERT INTO customer(VCname,VEmail,VAddress,VPhoneNo) VALUES(?,?,?,?)");
		
		
		
		myStmt.setString(1, usr.getVCname());
		myStmt.setString(2, usr.getVEmail());
		myStmt.setString(3, usr.getVAddress());
		myStmt.setString(4, usr.getVPhoneNo());
		
		myStmt.execute();
		
		System.out.println(myStmt.toString());
	
		
	}
	catch(Exception e) 
	{
		
		
	}


}

//public Connection getconnection() {
//	try {
//		Class.forName("com.mysql.jdbc.Driver");
//		return DriverManager.getConnection("jdbc:mysql://localhost:6060/accountdetails","root","");
//	}catch (Exception e) {
//		// TODO: handle exception
//	}
//	
//}
//	

		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		
		
		
	}
	
	
	
	


