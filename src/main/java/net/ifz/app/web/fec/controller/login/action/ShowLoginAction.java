/**
 * 
 */
package net.ifz.app.web.fec.controller.login.action;

import java.util.Collection;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import net.ifz.app.web.fec.common.exception.LoginException;
import net.ifz.app.web.fec.common.notification.mail.config.MailSenderBean;
import net.ifz.app.web.fec.common.notification.mail.config.MailSenderConfigBean;
import net.ifz.app.web.fec.controller.common.action.BaseAction;
import net.ifz.app.web.fec.controller.login.form.LoginForm;
import net.ifz.app.web.fec.datamapping.bean.TributaryBean;
import net.ifz.app.web.fec.datamapping.bean.UserBean;
import net.ifz.app.web.fec.datamapping.bean.UserSessionBean;
import net.ifz.app.web.fec.service.login.UserService;

public class ShowLoginAction extends BaseAction {
	
   public ActionForward executeAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
	   LoginForm loginForm = (LoginForm) form;
	   ActionForward forward = mapping.findForward(WELCOME_FORWARD);
	   UserBean user = null;
	   Collection<TributaryBean> tributaryList = null;
	   UserSessionBean userSession = null;
	   try{
		   if(null != loginForm.getEmail()){
			   user = UserService.getInstance().searUserById(loginForm.getEmail());
			   
			   if(null != user){
				   if(user.getStatus().equals("A")){
					   int passCode = genererNumber();
					   
					   //String remitente = "ecalderon@interfazsoftware.net";  //Para la dirección nomcuenta@gmail.com
					   MailSenderBean config = MailSenderConfigBean.getInstance().getMailSendersConfig().get("default");
					    Properties props = System.getProperties();
					    props.put("mail.smtp.host", "smtp.gmail.com");  //El servidor SMTP de Google
					    props.put("mail.smtp.user", config.getEmisorMail());
					    props.put("mail.smtp.clave", config.getPass());    //La clave de la cuenta
					    props.put("mail.smtp.auth", true);    //Usar autenticación mediante usuario y clave
					    props.put("mail.smtp.starttls.enable", true); //Para conectar de manera segura al servidor SMTP
					    props.put("mail.smtp.port", config.getPort()); //El puerto SMTP seguro de Googlec
					    props.put("mail.smtp.ssl.trust", config.getSmtpmail());
					    
					    Session session = Session.getDefaultInstance(props);
					    MimeMessage message = new MimeMessage(session);
				        message.setFrom(new InternetAddress(config.getEmisorMail()));
				        message.addRecipient(Message.RecipientType.TO, new InternetAddress(user.getEmail()));   //Se podrían añadir varios de la misma manera
				        message.setSubject("Codigo de Seguridad - IFZ");
				        message.setText("Su clave de ingreso temporal es: "+passCode);
				        
				        
				        Transport transport = session.getTransport("smtp");
				        transport.connect(config.getSmtpmail(), config.getEmisorMail(), config.getPass());
				        transport.sendMessage(message, message.getAllRecipients());
				        transport.close();
				        
				        
				        tributaryList  = UserService.getInstance().getTributaryByUser(user.getId());
				        
				        userSession = new UserSessionBean(user);
				        userSession.setPassCode(passCode);
				        userSession.setTributaryList(tributaryList);
				        
				        
				        request.getSession(false).setAttribute(USER_SESSION_INFO, userSession);
				        
					   
				   }else{
					   throw new LoginException(LoginException.USER_IS_LOCKED);
				   }
				   
			   }else{
				  throw new LoginException(LoginException.USER_DOESNT_EXIST_ERROR_CODE);
			   }
		   }else{
			   userSession = (UserSessionBean) request.getSession(false).getAttribute(USER_SESSION_INFO);
			   if(null != userSession){
				   userSession.setRetryAccount(userSession.getRetryAccount()+1);
				   request.setAttribute("errorCode", "07");
			   }else{
				   throw new LoginException(LoginException.USER_DOESNT_EXIST_ERROR_CODE);
			   }
			   
		   }
		   
		   request.setAttribute("user", userSession);
		   request.setAttribute("tributaryList", userSession.getTributaryList());
		   forward = mapping.findForward("success");
		   
	   } catch (LoginException e) {
		   request.setAttribute("errorCode", LoginException.EXCEPTION_CODE + e.getCode());
	   } catch (MessagingException me) {
		   request.setAttribute("errorCode", LoginException.EXCEPTION_CODE + LoginException.SEND_MAIL_EXCEPTION);
	   }
	   return forward;
	    
	     
   }


	public static int genererNumber(){
		   return (int)(100000 * Math.random());
	}
   
   
}
