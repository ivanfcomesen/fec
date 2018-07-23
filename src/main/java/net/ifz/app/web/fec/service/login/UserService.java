package net.ifz.app.web.fec.service.login;



import java.util.Collection;

import net.ifz.app.web.fec.common.exception.LoginException;
import net.ifz.app.web.fec.datamapping.bean.TributaryBean;
import net.ifz.app.web.fec.datamapping.bean.UserBean;
import net.ifz.app.web.fec.datamapping.dao.TributaryDAO;
import net.ifz.app.web.fec.datamapping.dao.UserDAO;

public class UserService {
	
	/**Instancia unica de la clase*/
	private static UserService instance = null;
	
	/**
	 * Metodo que devuelve la unica instancia posible de la clase
	 * */
	public static UserService getInstance(){
		if(instance == null){
			instance = new UserService();
		}
		return instance;
	}
	/**Cosntructor privado por defrecto
	 * */
	private UserService(){
		super();
	}
	
	
	public UserBean searUserById(String email) throws LoginException {
		UserBean result = null;
		UserDAO dao = null;
		if(null != email && !email.equals("")){
			dao = new UserDAO();
			result = dao.getUserByEmail(email);
		}else{
			throw new LoginException(LoginException.INVALID_ID_ERROR_CODE);
		}
		
		return result;
	}   
	
	
	public Collection<TributaryBean> getTributaryByUser(int idUsuario) throws LoginException {
		Collection<TributaryBean> result = null;
		TributaryDAO dao = null;
		dao = new TributaryDAO();
		result = dao.findTributaryByUser(idUsuario); 
		return result;
	}
	public void blockUser(int idUser) throws LoginException {
		UserDAO dao = new UserDAO();
		
		dao.blockUser(idUser);
		
		
	}   
}
