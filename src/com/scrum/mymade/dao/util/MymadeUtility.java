package com.scrum.mymade.dao.util;

public class MymadeUtility {

	public static String getActionFromUrl(String url) {
		/*System.out.println("URL : "+url);
		String[] actionArray2 = url.split("/");
		String action = actionArray2[actionArray2.length - 1];
		return action;*/
		
		String[] actionArray = url.split(".req");
		String actionUrlEnd = actionArray[0];
		String[] actionArray2 = actionUrlEnd.split("/");
		String action = actionArray2[actionArray2.length - 1];
		return action;
	}
	
}
