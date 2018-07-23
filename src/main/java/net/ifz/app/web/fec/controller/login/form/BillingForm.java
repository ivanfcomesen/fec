package net.ifz.app.web.fec.controller.login.form;

import org.apache.struts.action.ActionForm;

public class BillingForm extends ActionForm{
       private String salir=null;
       private String facturar=null;
       private String credito=null;
       private String devito=null;
       
       public BillingForm(){
    	   super();
       }

	public String getSalir() {
		return salir;
	}

	public void setSalir(String salir) {
		this.salir = salir;
	}

	public String getFacturar() {
		return facturar;
	}

	public void setFacturar(String facturar) {
		this.facturar = facturar;
	}

	public String getCredito() {
		return credito;
	}

	public void setCredito(String credito) {
		this.credito = credito;
	}

	public String getDevito() {
		return devito;
	}

	public void setDevito(String devito) {
		this.devito = devito;
	}
       
}
