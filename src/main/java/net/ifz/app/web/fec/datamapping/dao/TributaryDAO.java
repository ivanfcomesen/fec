package net.ifz.app.web.fec.datamapping.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;



import com.ibm.security.krb5.internal.crypto.r;
import com.mysql.jdbc.PreparedStatement;
import net.ifz.app.web.fec.datamapping.bean.TributaryBean;
import net.ifz.app.web.fec.datamapping.config.DataSourceConfigBean;

public class TributaryDAO extends JDBCBaseDAO {
	public Collection<TributaryBean> findTributaryByUser (int idUsuario) {
		Connection con = null; 
		Collection<TributaryBean> result = null; 
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = getConectionn(); 
			stmt = (PreparedStatement) con.prepareStatement("SELECT tributante.id, tributante.nombre, tributante.avatar, trib_x_user.roll FROM relacion_usuario_tributante as trib_x_user JOIN tributante ON trib_x_user.id_tributante = tributante.id where trib_x_user.id_usuario = ?");
			stmt.setInt(1, idUsuario);   
			rs = stmt.executeQuery();
			result = new ArrayList<>();
			while (rs.next()){ 
				TributaryBean tributary = new TributaryBean();
				tributary.setIdTributario(rs.getInt("id"));
				tributary.setName(rs.getString("nombre"));
		 		tributary.setLogo(rs.getBytes("avatar"));
		 		tributary.setRoll(rs.getString("roll").charAt(0));
				result.add(tributary);
			}
		} catch (SQLException sqle) { 
		  System.out.println("Error en la ejecución:"  + sqle.getErrorCode() + " " + sqle.getMessage());
		} finally {
			finallyResources(con, stmt); 
		}
		return result;
	 }
	    
		
	
	
}
