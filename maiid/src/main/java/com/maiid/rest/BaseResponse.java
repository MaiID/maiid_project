package com.maiid.rest;

public class BaseResponse {

	private String errorCode;
	private String errorMessage;

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
	
	public void setStatus(ResponseStatus status){
		this.errorCode = status.getErrorCode();
		this.errorMessage = status.getErrorMessage();
	}

}
