package net.ifz.app.web.fec.datamapping.config;

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

public class DataSourceConfigBean {
	private static final String RELATIVE_FILE_PATH = "/WEB-INF/resources/config/database/datasource-config.xml";

	Map<String, DataSourceBean> dataSources = null;
	/**Instancia unica de la clase*/
	private static DataSourceConfigBean instance = null;
	
	
	
	/**
	 * Metodo que devuelve la unica instancia posible de la clase
	 * */
	public static DataSourceConfigBean getInstance(){
		if(instance == null){
			instance = new DataSourceConfigBean();
		}
		return instance;
	}
	/**Cosntructor privado por defrecto
	 * */
	private DataSourceConfigBean(){
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
	         NodeList nList = doc.getElementsByTagName("datasource");
	         dataSources = new HashMap<>();
	         for (int temp = 0; temp < nList.getLength(); temp++) {
	                Node nodo = nList.item(temp);
	                System.out.println("Elemento:" + nodo.getNodeName());
	                if (nodo.getNodeType() == Node.ELEMENT_NODE) {
	                    Element element = (Element) nodo;
	                    DataSourceBean ds = new DataSourceBean();
	                    ds.setDataBaseUrl(element.getAttribute("dataBaseUrl"));
	                    ds.setDriver(element.getAttribute("driver"));
	                    ds.setPass(element.getAttribute("pass"));
	                    ds.setUser(element.getAttribute("user"));
	                    dataSources.put(element.getAttribute("id"), ds);
	                }
	            }
			
			
		    } catch (Exception e) {
		    	e.printStackTrace();
		    }
	}
	public Map<String, DataSourceBean> getDataSources() {
		return dataSources;
	}
	
}
