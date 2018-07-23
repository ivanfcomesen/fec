package net.ifz.app.web.fec.controller.login.form;

import org.apache.struts.action.ActionForm; 

public class LoginForm extends ActionForm {
	
	private String email = null;
	private int securityCode;
	private int tributaryId;
	
	public LoginForm(){
		super();
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(int securityCode) {
		this.securityCode = securityCode;
	}
	public int getTributaryId() {
		return tributaryId;
	}
	public void setTributaryId(int tributaryId) {
		this.tributaryId = tributaryId;
	}


	
}
