package com.scrum.mymade.handler;

import com.scrum.mymade.manager.UserManager;
import com.scrum.mymade.model.User;

public class UserHandler {

	public boolean registerUser(String userName, String name, String email, String password)
	{
		boolean flag = false;
		UserManager manager= new UserManager();
		User user = new User(name,userName,email);
		flag = manager.registerUser(user, password);
		
		return flag;
	}
	
	public boolean login(String mymadeId, String password)
	{
		boolean flag = false;
		
		UserManager manager = new UserManager();
		flag = manager.login(mymadeId,password);
		
		return flag;
	}
	
	public boolean checkUserExistanceById(String mymadeId)
	{
		boolean flag = false;
		
		UserManager manager = new UserManager();
		flag = manager.checkUserExistanceById(mymadeId);
		
		return flag;
	}
	
	public boolean checkUserExistanceByEmail(String email)
	{
		boolean flag = false;
		
		UserManager manager = new UserManager();
		flag = manager.checkUserExistanceByEmail(email);
		
		return flag;
	}
	
}
