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

public abstract class SecureBaseAction extends BaseAction {
	
	
   public ActionForward executeAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
	   ActionForward forward = mapping.findForward(WELCOME_FORWARD);
	   UserSessionBean userSession = (UserSessionBean) request.getSession(false).getAttribute(USER_SESSION_INFO);
	   
	   if(null != userSession && null != userSession.getTributary()){
		   
		   if(System.currentTimeMillis() - userSession.getLastResquetTime() <  300000 ){
			   forward =  executeSecureAction(mapping, form, request, response);
			   userSession.setLastResquetTime(System.currentTimeMillis());
		   }else{
			   request.setAttribute(ERROR_CODE, "06");
		   }
		   
	   }else{
		   request.setAttribute(ERROR_CODE, "06");
	   }
	   return forward;
	   
   }
   public abstract ActionForward executeSecureAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
