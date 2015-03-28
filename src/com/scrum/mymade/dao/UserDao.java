package com.scrum.mymade.dao;

import com.scrum.mymade.model.User;

public interface UserDao {

	public boolean addUser(User user, String password);
	public boolean login(String mymadeId, String password);
	
	public boolean checkUserExistanceById(String userName);
	public boolean checkUserExistanceByEmail(String userName);

	
}
