/**
 * 
 */
package net.ifz.app.web.fec.controller.common.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ifz.app.web.fec.datamapping.bean.UserSessionBean;
public class GetAvatarAction extends ImageGetterBaseAction {
	
   public void setImage(HttpServletRequest request, HttpServletResponse response, UserSessionBean userSession) throws Exception {
	   
	   response.getOutputStream().write(userSession.getAvatar());
	  
   }
 
   
   
}
