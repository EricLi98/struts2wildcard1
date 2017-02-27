package com.inspur;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

 
public class LoginRegistAction 
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
	//Action������ע������߼�
	public String regist() throws Exception
	{
		ActionContext.getContext().getSession()
			.put("user" , getUsername());
		setTip("��ϲ��," + getUsername() + ",���Ѿ�ע��ɹ���");
		return SUCCESS;
	}
	//Action�����ĵ�¼�����߼�
	public String login() throws Exception
	{
		if (getUsername().equals("sa")
			&& getPassword().equals("123") )
		{
			ActionContext.getContext().getSession()
				.put("user" , getUsername());
			setTip("��ӭ," + getUsername() + ",���Ѿ���¼�ɹ���");
			return SUCCESS;
		}
		else
		{
			return ERROR;
		}
	}
}