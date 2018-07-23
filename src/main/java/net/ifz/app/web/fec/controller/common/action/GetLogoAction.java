/**
 * 
 */
package net.ifz.app.web.fec.controller.common.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ifz.app.web.fec.datamapping.bean.TributaryBean;
import net.ifz.app.web.fec.datamapping.bean.UserSessionBean;
public class GetLogoAction extends ImageGetterBaseAction {
	
   public void setImage(HttpServletRequest request, HttpServletResponse response, UserSessionBean userSession) throws Exception {
	   byte[] logo = null;
	   
	   if(null != userSession.getTributary()){
		   logo = userSession.getTributary().getLogo();
	   } else {
		   int id = Integer.parseInt(request.getParameter("id"));
		   for(TributaryBean trib : userSession.getTributaryList()){
			   if(id == trib.getIdTributario()){
				   logo = trib.getLogo();
				   break;
			   }
		   }
	   }
	   
	   
	   response.getOutputStream().write(logo);
	  
   }

   
   
}
