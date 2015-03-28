package com.scrum.mymade.exception;

public class SystemException extends Exception{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int errorId=911;
	public SystemException(){
		super();
	}
	
	public SystemException(String message)
	{
		super(message);
	}
	
	public SystemException(String message, int errorId)
	{
		super(message);
		this.setErrorId(errorId);
	}
	
	public SystemException(String message, Throwable cause)
	{
		super(message,cause);
	}

	public int getErrorId() {
		return errorId;
	}

	public void setErrorId(int errorId) {
		this.errorId = errorId;
	}

}
