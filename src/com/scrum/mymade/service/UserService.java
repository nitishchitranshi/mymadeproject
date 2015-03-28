package com.scrum.mymade.service;

import com.scrum.mymade.dao.UserDao;
import com.scrum.mymade.dao.impl.UserDaoImpl;
import com.scrum.mymade.model.User;

public class UserService {

	public boolean registerUser(User user, String password)
	{
		boolean flag = false;
		UserDao dao = new UserDaoImpl();
		flag = dao.addUser(user, password);
		return flag;
	}
	
	public boolean login(String mymadeId, String password)
	{
		boolean flag = false;
		UserDao dao = new UserDaoImpl();
		flag = dao.login(mymadeId, password);
		return flag;
	}
	
	public boolean checkUserExistanceById(String mymadeId)
	{
		boolean flag = false;
		UserDao dao = new UserDaoImpl();
		flag = dao.checkUserExistanceById(mymadeId);
		return flag;
	}
	

	
	public boolean checkUserExistanceByEmail(String email)
	{
		boolean flag = false;
		UserDao dao = new UserDaoImpl();
		flag = dao.checkUserExistanceByEmail(email);
		return flag;
	}
}
