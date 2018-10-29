package service;

import model.PersonModel;
import java.util.ArrayList;


public interface IuserService {

	public void addUser( PersonModel usr );
	
	//public ArrayList<User> getStudents();
	
	public PersonModel  checkUser(int id);
	
	
	
	

}
