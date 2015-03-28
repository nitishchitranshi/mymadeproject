package com.scrum.mymade.exception;

public class BusinessException extends Exception{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int errorId=500;
	
	public int getErrorId(){
		return errorId;
	}
	
	public BusinessException(){
		super();
	}
	
	public BusinessException(String message)
	{
		super(message);
	}
	
	public BusinessException(String message, int errorId)
	{
		super(message);
		this.errorId = errorId;
	}
	
	public BusinessException(String message, Throwable cause)
	{
		super(message, cause);
	}
	

}
