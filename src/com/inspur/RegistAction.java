package com.inspur;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

 
public class RegistAction 
	extends ActionSupport
{
	//��װ�û������������������
	private String username;
	private String password;
	//��װ��������tip����
	private String tip;
	//username���Զ�Ӧ��setter��getter����
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	//password���Զ�Ӧ��getter��setter����
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	//tip���Զ�Ӧ��setter��getter����
	public String getTip()
	{
		return tip;
	}
	public void setTip(String tip)
	{
		this.tip = tip;
	}
	//Action������Ĭ�ϵĿ����߼�
	public String execute() throws Exception
	{
		ActionContext.getContext().getSession()
			.put("user" , getUsername());
		setTip("��ϲ��," + getUsername() + ",���Ѿ�ע��ɹ���");
		return SUCCESS;
	}
}