package net.ifz.app.web.fec.controller.handle.action;
import javax.servlet.http.*;
import org.apache.struts.action.*;
import net.ifz.app.web.fec.controller.common.action.SecureBaseAction;
public class ShowHandleAction extends SecureBaseAction{


	@Override
	 public ActionForward executeSecureAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		   ActionForward forward = mapping.findForward("success");
		   return forward;
		}
	}
	