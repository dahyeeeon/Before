<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.login.CoDBBean"%>
<% request.setCharacterEncoding("utf-8");%>
<%
    String cid = request.getParameter("cid");
	String cpasswd  = request.getParameter("cpasswd");
	
	CoDBBean logon = CoDBBean.getInstance();
    int check= logon.userCheck(cid, cpasswd);

    if(check==1){
		session.setAttribute("cid", cid);
		response.sendRedirect("fingermainFirst.jsp");
	}else if(check==0){%>
	<script> 
	  alert("비밀번호가 맞지 않습니다.");
      history.go(-1);
	</script>
<%}else{ %>
	<script>
	  alert("아이디가 맞지 않습니다..");
	  history.go(-1);
	</script>
<%}%>