package net.ifz.app.web.common.taglib;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import net.ifz.app.web.fec.controller.login.enumerator.Roll;
import net.ifz.app.web.fec.datamapping.bean.UserSessionBean;


public class ValidateRollTag extends BodyTagSupport {
	/** Automatically generated javadoc for: serialVersionUID */
	private static final long serialVersionUID = 7292958230328510657L;
	protected Roll authorizedRoll;
	protected String roll;
	public static final String USER_SESSION_INFO = "userSessionInfo";
	
	Map<Roll, Integer> rollWeights = null;
	

	
	/**
	 * Constructor por defecto. 
	 */
	public ValidateRollTag() {
		init();
	}
	
	/**
	 * Inicializa los valores de los atributos. 
	 */
	protected void init() {
		rollWeights = new HashMap<Roll, Integer>();
		rollWeights.put(Roll.SYSTEM, 30);
		rollWeights.put(Roll.CLIENT, 20);
		rollWeights.put(Roll.ASSISTANT, 10);
	}
	
	public void release() {
		super.release();
		this.init();
	}
	
	/* (no Javadoc)
	 * @see javax.servlet.jsp.tagext.Tag#doStartTag()
	 */
	public int doStartTag() throws JspException {
		int result = SKIP_BODY;
		UserSessionBean userSession = (UserSessionBean) pageContext.getSession().getAttribute(USER_SESSION_INFO);
		if(rollWeights.get(this.authorizedRoll)  <= rollWeights.get(userSession.getTributary().getRoll())){
			result = EVAL_BODY_INCLUDE;
		}
		return result;
	}

	public Roll getRoll() {
		return authorizedRoll;
	}

	public void setRoll(String roll) {
		switch (roll.charAt(0)) {
			case 'S':
				this.authorizedRoll = Roll.SYSTEM;
				break;
			case 'C':
				this.authorizedRoll = Roll.CLIENT;
				break;
			default:
				this.authorizedRoll = Roll.ASSISTANT;
		}
	}
	public void setRoll(Roll roll) {
		this.authorizedRoll = roll;	
	}
	public void setRoll(char roll) {
		switch (roll) {
			case 'S':
				this.authorizedRoll = Roll.SYSTEM;
				break;
			case 'C':
				this.authorizedRoll = Roll.CLIENT;
				break;
			default:
				this.authorizedRoll = Roll.ASSISTANT;
		}
	}
}
