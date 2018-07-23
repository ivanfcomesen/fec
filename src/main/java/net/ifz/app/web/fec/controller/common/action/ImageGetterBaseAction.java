/**
 * 
 */
package net.ifz.app.web.fec.controller.common.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import net.ifz.app.web.fec.datamapping.bean.UserSessionBean;

public abstract class ImageGetterBaseAction extends BaseAction {
	
   public ActionForward executeAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
	   UserSessionBean userSession = (UserSessionBean) request.getSession(false).getAttribute(USER_SESSION_INFO);
	   
	   response.setContentType("image/png");
	   response.setHeader("Cache-Control", "no-store,no-cache,max-age=0");
	   response.setHeader("Pragma","no-cache");
	   
	   setImage(request, response, userSession);
	   
	   response.getOutputStream().flush();
	   
	   return null;
   }
   public abstract void setImage(HttpServletRequest request, HttpServletResponse response, UserSessionBean user) throws Exception;
}
