
package net.ifz.app.web.fec.controller.billing.action;



import javax.servlet.http.*;
import org.apache.struts.action.*;
import net.ifz.app.web.fec.controller.common.action.SecureBaseAction;


public class ShowBillingAction extends SecureBaseAction {
	@Override
	 public ActionForward executeSecureAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		   ActionForward forward = mapping.findForward("success");
		   return forward;
		   
	 }

}