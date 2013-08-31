package com.maiid.rest;

public enum ResponseStatus {
	SUCCESS("0000", "Success"), 
	LOGIN_INCORRECT("0001", "Login incorrect");
	
	private String errorCode;
	private String errorMessage;
	
	ResponseStatus(String errorCode, String errorMessage){
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}