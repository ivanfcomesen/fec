package net.ifz.app.web.fec.common.exception;

public class LoginException extends FecException {
	
	public static String EXCEPTION_CODE = "lgn";
	public static String INVALID_ID_ERROR_CODE = "01";
	public static String USER_DOESNT_EXIST_ERROR_CODE = "02";
	public static String SEND_MAIL_EXCEPTION = "03";
	public static String TRIBUTARY_ID_IS_NOT_YOURS = "04";
	public static String USER_IS_LOCKED = "05";
	public LoginException(String errorCode){
		this.setCode(errorCode);
	}

}
