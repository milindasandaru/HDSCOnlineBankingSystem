package com.users;

public class UserLoginResult {
	
	private String emailAddress;
	private int clientId;

	public UserLoginResult(String emailAddress, int clientId) {
		this.emailAddress = emailAddress;
		this.clientId = clientId;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public int getClientId() {
		return clientId;
	}

}
