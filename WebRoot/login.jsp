<%--
��վ: <a href="http://www.crazyit.org">���Java����</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2012, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>��¼ҳ��</title>
</head>
<body>
<table width="300" align="center">
<form action="loginAction" method="post" id="frm1">
	<tr>
		<td>�û���:</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>��&nbsp;&nbsp;��:</td>
		<td><input type="text" name="password"/></td>
	</tr>
	<tr>
		<td><input type="submit" value="��¼"/></td>
		<td><input type="submit" value="ע��"
			onclick="regist();"/></td>
	</tr>
</form>
<table>

<table width="300" align="center">
<form action="w2/LoginAction" method="post" id="frm2">
	<tr>
		<td>�û���:</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>��&nbsp;&nbsp;��:</td>
		<td><input type="text" name="password"/></td>
	</tr>
	<tr>
		<td><input type="submit" value="��¼"/></td>
		<td><input type="submit" value="ע��"
			onclick="regist2();"/></td>
	</tr>
</form>
<table>
<table width="300" align="center">
<form action="w3/dyAction!login" method="post" id="frm3">
	<tr>
		<td>�û���:</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>��&nbsp;&nbsp;��:</td>
		<td><input type="text" name="password"/></td>
	</tr>
	<tr>
		<td><input type="submit" value="��¼"/></td>
		<td><input type="submit" value="ע��"
			onclick="regist3();"/></td>
	</tr>
</form>
<table>
<script type="text/javascript">
function regist()
{
	//��ȡҳ��ĵ�һ����
	targetForm = document.getElementById("frm1");
	//��̬�޸ı���action����
	targetForm.action = "registAction";
}
function regist2()
{
	//��ȡҳ��ĵ�һ����
	targetForm = document.getElementById("frm2");
	//��̬�޸ı���action����
	targetForm.action = "w2/RegistAction";
}
function regist3()
{
	//��ȡҳ��ĵ�һ����
	targetForm = document.getElementById("frm3");
	//��̬�޸ı���action����
	targetForm.action = "w3/dyAction!regist";
}
</script>
</body>
</html>
