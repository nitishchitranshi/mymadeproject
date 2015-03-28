package com.scrum.mymade.dao.util;

import java.util.HashMap;

import com.scrum.mymade.constants.Constants;


public class RequestParser {
	
	private static HashMap<String, String> actionMap = new HashMap<String,String>();

	static{
		actionMap.put(Constants.NULL_STRING,"0");
		actionMap.put(Constants.ACTION_REGISTER_USER,"1");
		actionMap.put(Constants.ACTION_LOGIN,"2");

	}
	
	public static int getActionKey(String action)
	{
		int actionKey = 0;
		if(actionMap.containsKey(action))
		{
			actionKey=Integer.parseInt(actionMap.get(action));
		}

		return actionKey;
	}


}
