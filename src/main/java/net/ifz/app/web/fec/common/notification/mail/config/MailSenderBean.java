package net.ifz.app.web.fec.common.notification.mail.config;

public class MailSenderBean {

	
	private String emisorMail, pass, port, smtpmail;

	public MailSenderBean() {
		super();
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmisorMail() {
		return emisorMail;
	}
	public void setEmisorMail(String emisorMail) {
		this.emisorMail = emisorMail;
	}
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public String getSmtpmail() {
		return smtpmail;
	}
	public void setSmtpmail(String smtpmail) {
		this.smtpmail = smtpmail;
	}
	
	
	
}
