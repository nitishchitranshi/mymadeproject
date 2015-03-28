package com.scrum.mymade.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.scrum.mymade.dao.UserDao;
import com.scrum.mymade.dao.util.ConnectionUtil;
import com.scrum.mymade.exception.SystemException;
import com.scrum.mymade.model.User;

public class UserDaoImpl implements UserDao{

	@Override
	public boolean addUser(User user, String password) {
		boolean flag = false;
		int addUserCount = 0;
		int addLoginCount = 0;
		Connection con = null;
		PreparedStatement psAddUser = null;
		PreparedStatement psAddLogin = null;
		String queryAddUser = null;
		String queryAddLogin = null;
		try {
			con = ConnectionUtil.getConnection();
			con.setAutoCommit(false);
			queryAddUser = "insert into user (mymadeId, name, email, contact_no) values (?,?,?,?)";
			queryAddLogin = "insert into login (mymadeId , password) values (?,?)";
			
			psAddUser = con.prepareStatement(queryAddUser);
			psAddUser.setString(1, user.getMyMadeId());
			psAddUser.setString(2, user.getName());
			psAddUser.setString(3, user.getEmail());
			psAddUser.setString(4, user.getContactNo());
			
			psAddLogin = con.prepareStatement(queryAddLogin);
			psAddLogin.setString(1,user.getMyMadeId());
			psAddLogin.setString(2,password);
			
			addUserCount = psAddUser.executeUpdate();
		 	addLoginCount = psAddLogin.executeUpdate();
		 	
		 	System.out.println("Added User Count : "+addUserCount);
		 	System.out.println("Added Login Count : "+addLoginCount);
		 	
		 	if(addUserCount > 0 && addLoginCount > 0)
		 	{
		 		flag = true;
		 		con.commit();
		 	}
		 	else{
		 		flag = false;
		 		con.rollback();
		 	}
			
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally{
			try {
				psAddLogin.close();
				psAddUser.close();
				con.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return flag;
	}

	@Override
	public boolean login(String mymadeId, String password) {
		System.out.println("Inside DAO of login");

		boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = null;
		try {
			query = "select mymadeid from login where mymadeid = ? and password = ?";
			con = ConnectionUtil.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, mymadeId);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next())
			{
				flag = true;
			}
			
			
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally{
			try {
				ps.close();
				rs.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;

	}
	
	public boolean checkUserExistanceById(String mymadeId)
	{
		System.out.println("Inside DAO of checkUserExistance by ID");

		boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = null;
		try {
			query = "select mymadeid from user where mymadeid = ?";
			con = ConnectionUtil.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, mymadeId);
			rs = ps.executeQuery();
			if(rs.next())
			{
				flag = true;
			}
			
			
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally{
			try {
				ps.close();
				rs.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}
	
	public boolean checkUserExistanceByEmail(String email)
	{
		System.out.println("Inside DAO of checkUserExistance by Email");
		boolean flag = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = null;
		try {
			query = "select mymadeid from user where email = ?";
			con = ConnectionUtil.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if(rs.next())
			{
				flag = true;
			}
			
			
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally{
			try {
				ps.close();
				rs.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}


	
}
