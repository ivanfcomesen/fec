package net.ifz.app.web.fec.datamapping.bean;

import net.ifz.app.web.fec.controller.login.enumerator.Roll;

public class TributaryBean {
		private int idTributary;
		private String name;
		private byte[] logo;
		private Roll roll;
		
		
		public Roll getRoll() {
			return roll;
		}
		public void setRoll(char roll) {
			switch (roll) {
				case 'S':
					this.roll = Roll.SYSTEM;
					break;
				case 'C':
					this.roll = Roll.CLIENT;
					break;
				default:
					this.roll = Roll.ASSISTANT;
			}
		}
		public TributaryBean(){
			super();
		}
		
		public int getIdTributario() {
			return idTributary;
		}

		public void setIdTributario(int idTributario) {
			this.idTributary = idTributario;
		}

		public String getName() {
			return name;
		}
		public void setName(String nombre) {
			this.name = nombre;
		}

		public int getIdTributary() {
			return idTributary;
		}

		public void setIdTributary(int idTributary) {
			this.idTributary = idTributary;
		}

		public byte[] getLogo() {
			return logo;
		}

		public void setLogo(byte[] logo) {
			this.logo = logo;
		}

		
		
}
