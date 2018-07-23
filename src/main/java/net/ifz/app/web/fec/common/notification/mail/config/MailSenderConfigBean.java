package net.ifz.app.web.fec.common.notification.mail.config;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import net.ifz.app.web.fec.common.plugin.PathTool;

public class MailSenderConfigBean {
	private static final String RELATIVE_FILE_PATH = "/WEB-INF/resources/config/notification/mail/mailsender-config.xml";

	Map<String, MailSenderBean> mailSendersConfig = null;
	/**Instancia unica de la clase*/
	private static MailSenderConfigBean instance = null;
	 
	
	
	/**
	 * Metodo que devuelve la unica instancia posible de la clase
	 * */
	public static MailSenderConfigBean getInstance(){
		if(instance == null){
			instance = new MailSenderConfigBean();
		}
		return instance;
	}
	/**Cosntructor privado por defrecto
	 * */
	private MailSenderConfigBean(){
		super();
		
		
		try {

			File fXmlFile = new File(PathTool.getAbsolute(RELATIVE_FILE_PATH));
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);
					
			//optional, but recommended
			//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
			doc.getDocumentElement().normalize();

			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
	         NodeList nList = doc.getElementsByTagName("mail-sender");
	         mailSendersConfig = new HashMap<>();
	         for (int temp = 0; temp < nList.getLength(); temp++) {
	                Node nodo = nList.item(temp);
	                System.out.println("Elemento:" + nodo.getNodeName());
	                if (nodo.getNodeType() == Node.ELEMENT_NODE) {
	                    Element element = (Element) nodo;
	                    MailSenderBean ms = new MailSenderBean();
	                    ms.setEmisorMail(element.getAttribute("emisormail"));
	                    ms.setPass(element.getAttribute("pass"));
	                    ms.setPort(element.getAttribute("port"));
	                    ms.setSmtpmail(element.getAttribute("smtpmail"));
	                    mailSendersConfig.put(element.getAttribute("id"), ms);
	                }
	            }
			
			
		    } catch (Exception e) {
		    	e.printStackTrace();
		    }
	}
	public Map<String, MailSenderBean> getMailSendersConfig() {
		return mailSendersConfig;
	}
	
}
