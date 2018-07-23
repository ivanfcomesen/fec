package net.ifz.app.web.fec.controller.bill.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import net.ifz.app.web.fec.controller.common.action.BaseAction;

public class ShowBillAction extends BaseAction {

	@Override
	public ActionForward executeAction(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub 
		 ActionForward forward = mapping.findForward("success");
		   return forward;
	}

}
