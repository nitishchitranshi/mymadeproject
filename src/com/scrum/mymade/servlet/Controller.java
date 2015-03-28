package com.scrum.mymade.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.scrum.mymade.dao.util.MymadeUtility;
import com.scrum.mymade.dao.util.RequestParser;
import com.scrum.mymade.handler.UserHandler;


/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get request");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Inside Post Request");
		processPostRequest(request,response);
	
	
	}
	
	private void processPostRequest(HttpServletRequest request, HttpServletResponse response)
	{
		System.out.println("Inside the process post request");
		String path = request.getRequestURI();
		System.out.println(path);
		String action = null;
		// Fetching the action from URL
		action = MymadeUtility.getActionFromUrl(path);
		System.out.println("Action : "+action);
		int actionKey = RequestParser.getActionKey(action);
		System.out.println("Action Key : "+actionKey);
		
		switch (actionKey) {
		
		case 1: {
			//Register User
			boolean flagEmail = false;
			boolean flagId = false;
			String message = null;
			String name = request.getParameter("fullname");
			String mymadeId = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String confirm_password = request.getParameter("confirm_password");
			
			UserHandler handler = new UserHandler();
			
			flagEmail=handler.checkUserExistanceByEmail(email);
			System.out.println("Email found in database : "+flagEmail);
			flagId = handler.checkUserExistanceById(mymadeId);
			System.out.println("Username / Mymadeid found in database : "+flagId);
			if(flagEmail)
			{
				message = "Email already exists";
			}
			else if(flagId)
			{
				message = "ID already exists";
			}
			else if(!(flagEmail || flagId))
			{
				System.out.println("Neither of email and Id exists");
				boolean flag = handler.registerUser(mymadeId, name, email, password);
				if(flag)
				{
					message = "User Registered Successfully";
				}
			}
			
			request.setAttribute("message",message);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			break;
		}
		case 2: {
			//login
			boolean flag = false;
			String message = null;
			String mymadeId= request.getParameter("username");
			String password = request.getParameter("password");
			
			UserHandler handler = new UserHandler();
			
			flag=handler.login(mymadeId, password);
			System.out.println("Authentication Success : "+flag);
			if(flag)
			{
				message = "Authentication Successful";
			}
			else
			{
				message = "Authentication failed";
			}
			
			request.setAttribute("message",message);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			break;
		}
		}
	}

}
