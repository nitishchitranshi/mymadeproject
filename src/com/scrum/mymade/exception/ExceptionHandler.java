package com.scrum.mymade.exception;

import org.json.JSONException;
import org.json.JSONObject;



public class ExceptionHandler {
	public ExceptionHandler() {
	}

	
	public static String handle(BusinessException businessException) {
		
		JSONObject errorResponse = new JSONObject();
		try {
			errorResponse.put("status","fail");
			errorResponse.put("response", businessException.getMessage());
		} catch (JSONException e) {
		
		}
		
		
		return errorResponse.toString();

	}
	
	public static String handle(SystemException systemException) {
		JSONObject errorResponse = new JSONObject();
		try {
			errorResponse.put("status","fail");
			errorResponse.put("response", systemException.getMessage());
		} catch (JSONException e) {
		
		}
		
		
		return errorResponse.toString();


	}

}
