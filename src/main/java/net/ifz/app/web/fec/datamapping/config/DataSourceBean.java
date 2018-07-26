package net.ifz.app.web.fec.datamapping.config;

public class DataSourceBean {

	private static final String DEFAULT_PASS = "Ivans.1989";
	
	private String dataBaseUrl, driver, user, pass;

	public DataSourceBean() {
		super();
	}
	public String getDataBaseUrl() {
		return dataBaseUrl;
	}
	public void setDataBaseUrl(String dataBaseUrl) {
		this.dataBaseUrl = dataBaseUrl;
	}
	public String getDriver() {
		return driver;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		if(null == pass){
			this.pass = DEFAULT_PASS;
		}else{
			this.pass = pass;
		}
			
	}
}
