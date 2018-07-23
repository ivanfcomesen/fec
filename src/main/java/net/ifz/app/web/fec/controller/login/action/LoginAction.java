/**
 * 
 */
package net.ifz.app.web.fec.controller.login.action;

import javax.servlet.http.*;
import org.apache.struts.action.*;

import net.ifz.app.web.fec.common.exception.LoginException;
import net.ifz.app.web.fec.controller.common.action.BaseAction;
import net.ifz.app.web.fec.controller.login.form.LoginForm;
import net.ifz.app.web.fec.datamapping.bean.TributaryBean;
import net.ifz.app.web.fec.datamapping.bean.UserSessionBean;
import net.ifz.app.web.fec.service.login.UserService;
public class LoginAction extends BaseAction {
	
public ActionForward executeAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
	   
	   LoginForm billingForm = (LoginForm) form;// carga el codigo de seguridad, email y id tributante.String email = null;int securityCode;int tributaryId;	
	   ActionForward forward = mapping.findForward(FAILURE);  // espera la respuesta para direccionalo
	   UserSessionBean userSession = (UserSessionBean) request.getSession(false).getAttribute(USER_SESSION_INFO);//esta en el request y tiene todos los datos. codigo de seguridad, boean, tributario, tiempotranscuroido, retryAccount
	   
	   try{ //codigo de seguridad, == request pido codigo
		   if(billingForm.getSecurityCode() == userSession.getPassCode()){
			   // es ejecutara siempre que. tributario de user
			    for (TributaryBean tributary : userSession.getTributaryList()) {
			    	
			    	// si, id tributario= id dijitado en rl raquest
				   if(tributary.getIdTributario() == billingForm.getTributaryId()){
					   userSession.setTributary(tributary); //en u=secion usuario pobgame a tributante.
					   break;// termina este bucle.
				   }  
				   
			   }
			   if(userSession.getTributary() == null){
				   UserService.getInstance().blockUser(userSession.getId());
				   forward = mapping.findForward(WELCOME_FORWARD);  // regreso al index.
				   throw new LoginException(LoginException.TRIBUTARY_ID_IS_NOT_YOURS); // el tributario no es suyo
			   }
			   userSession.setLastResquetTime(System.currentTimeMillis()); // secuion usuario genereme esta fecha en tiempo 
			   request.getSession(false).setAttribute(USER_SESSION_INFO, userSession); // del request deme secion. pon atributo
			   forward = mapping.findForward(SUCCESS); // retorna bien.
		   } else{ // si [pasan 5 minutos sin usar la sesion se sale automaticamente.
			   if(userSession.getRetryAccount() == 2){
				   UserService.getInstance().blockUser(userSession.getId());
				   forward = mapping.findForward(WELCOME_FORWARD);  // regreso al index.
				   throw new LoginException("08");// y le tira el error.
			   }
			   throw new LoginException(LoginException.USER_DOESNT_EXIST_ERROR_CODE); //el ususuarioi no existe
		   }
   
	   }catch(LoginException e){
		   request.setAttribute(ERROR_CODE, LoginException.EXCEPTION_CODE + e.getCode());
	   } 
	   return forward;
   }
    
}
