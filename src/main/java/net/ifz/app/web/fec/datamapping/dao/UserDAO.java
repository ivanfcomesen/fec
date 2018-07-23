package net.ifz.app.web.fec.datamapping.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.PreparedStatement;
import net.ifz.app.web.fec.datamapping.bean.UserBean;
public class UserDAO extends JDBCBaseDAO {
	public UserBean getUserByEmail(String email) {
		Connection con = null;
		UserBean result = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = getConectionn();
			stmt = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario WHERE email = ? ");
			stmt.setString(1, email);   
			rs = stmt.executeQuery();
			while (rs.next()){
				System.out.println (rs.getString("nombre") + ": " + rs.getString("email"));
				result = new UserBean();
				result.setEmail(rs.getString("email"));
				result.setName(rs.getString("nombre"));
				result.setId(rs.getInt("id"));
				result.setStatus(rs.getString("estado"));
				result.setAvatar(rs.getBytes("avatar"));
			}
		} catch (SQLException sqle) { 
		  System.out.println("Error en la ejecución:"  + sqle.getErrorCode() + " " + sqle.getMessage());
		} finally {
			finallyResources(con, stmt); 
		}
		return result;
	 }

	public void blockUser(int idUser) {
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = getConectionn();
			stmt = (PreparedStatement) con.prepareStatement("UPDATE usuario SET estado = 'B' WHERE id = ? ");
			stmt.setInt(1, idUser);   
			stmt.execute();
			
		} catch (SQLException sqle) { 
		  System.out.println("Error en la ejecución:"  + sqle.getErrorCode() + " " + sqle.getMessage());
		} finally {
			finallyResources(con, stmt); 
		}
	 }
	
}