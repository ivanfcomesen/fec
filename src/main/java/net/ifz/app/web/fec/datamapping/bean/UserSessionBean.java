package net.ifz.app.web.fec.datamapping.bean;

public class UserSessionBean extends UserBean {
	private int passCode;
	private boolean isSessionValid = false;
	private TributaryBean tributary = null;
	private long lastResquetTime = 0;
	private int retryAccount = 0;
	public UserSessionBean(){
		super();
	}
	public UserSessionBean(UserBean user){
		super();
		this.setEmail(user.getEmail());
		this.setId(user.getId());
		this.setName(user.getName());
		this.setTributaryList(user.getTributaryList());
		this.setAvatar(user.getAvatar());
	}
	public int getPassCode() {
		return passCode;
	}
	public void setPassCode(int passCode) {
		this.passCode = passCode;
	}
	public boolean isSessionValid() {
		return isSessionValid;
	}
	public void setSessionValid(boolean isSessionValid) {
		this.isSessionValid = isSessionValid;
	}
	public TributaryBean getTributary() {
		return tributary;
	}
	public void setTributary(TributaryBean tributary) {
		this.tributary = tributary;
	}
	public long getLastResquetTime() {
		return lastResquetTime;
	}
	public void setLastResquetTime(long lastResquetTime) {
		this.lastResquetTime = lastResquetTime;
	}
	public int getRetryAccount() {
		return retryAccount;
	}
	public void setRetryAccount(int retryAccount) {
		this.retryAccount = retryAccount;
	}
	
	
}
