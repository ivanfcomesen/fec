package net.ifz.app.web.fec.datamapping.bean;

import java.util.Collection;

public class UserBean {
	private String name, email, status;
	private int id;
	Collection<TributaryBean> tributaryList = null;
	private byte[] avatar;
	public UserBean(){
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Collection<TributaryBean> getTributaryList() {
		return tributaryList;
	}
	public void setTributaryList(Collection<TributaryBean> tributaryList) {
		this.tributaryList = tributaryList;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public byte[] getAvatar() {
		return avatar;
	}
	public void setAvatar(byte[] avatar) {
		this.avatar = avatar;
	}
	
	
}
