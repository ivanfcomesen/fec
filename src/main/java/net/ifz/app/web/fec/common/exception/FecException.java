package net.ifz.app.web.fec.common.exception;

public class FecException extends Exception {
	
	private String code = null;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
