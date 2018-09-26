<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="log.member.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8");
String[] userok = request.getParameterValues("userok");

for( int i = 0; i < userok.length; i++ )
{
out.println(userok[i]);
}

String[] sto_sel = request.getParameterValues("sto_sel");

for( int i = 0; i < sto_sel.length; i++ )
{
out.println(sto_sel[i]);
}


%>

 <jsp:useBean id="member" class="log.member.LogonDataBean">
     <jsp:setProperty name="member" property="*"/>
 </jsp:useBean>
 
<%
  LogonDBBean logon = LogonDBBean.getInstance();
  logon.insertMember(member); 
%>
