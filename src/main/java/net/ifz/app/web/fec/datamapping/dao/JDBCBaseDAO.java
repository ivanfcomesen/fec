package net.ifz.app.web.fec.datamapping.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import net.ifz.app.web.fec.datamapping.config.DataSourceConfigBean;

public class JDBCBaseDAO {
	public static Connection getConectionn() {
		Connection con = null;
		String sURL = DataSourceConfigBean.getInstance().getDataSources().get("default").getDataBaseUrl();
		try {
			Class.forName(DataSourceConfigBean.getInstance().getDataSources().get("default").getDriver()).newInstance();
			con = DriverManager.getConnection(sURL,DataSourceConfigBean.getInstance().getDataSources().get("default").getUser(),DataSourceConfigBean.getInstance().getDataSources().get("default").getPass());
			
		} catch (SQLException sqle) { 
		  System.out.println("Error en la ejecución:"  + sqle.getErrorCode() + " " + sqle.getMessage());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	 }
	public void finallyResources(Connection con, PreparedStatement stmt) {
		try {
			if(null != con && !con.isClosed()){
				con.close();
				con = null;
			}
			stmt = null;
		} catch (SQLException sqle) { 
			  System.out.println("Error en la ejecución:"  + sqle.getErrorCode() + " " + sqle.getMessage());
		}
	}
}
