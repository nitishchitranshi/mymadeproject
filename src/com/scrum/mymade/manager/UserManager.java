package com.scrum.mymade.manager;

import com.scrum.mymade.model.User;
import com.scrum.mymade.service.UserService;

public class UserManager {

	public boolean registerUser(User user, String password)
	{
		boolean flag = false;
		
		UserService service = new UserService();
		flag = service.registerUser(user, password);
		return flag;
	}
	
	public boolean login(String mymadeId, String password)
	{
		boolean flag = false;
		UserService service = new UserService();
		flag = service.login(mymadeId, password);
		return flag;
	}
	

	public boolean checkUserExistanceById(String mymadeId)
	{
		boolean flag = false;
		UserService service = new UserService();
		flag = service.checkUserExistanceById(mymadeId);
		return flag;
	}
	
	public boolean checkUserExistanceByEmail(String email)
	{
		boolean flag = false;
		UserService service = new UserService();
		flag = service.checkUserExistanceByEmail(email);
		return flag;
	}
	
}
