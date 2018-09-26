<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.login.InDBBean"%>
<% request.setCharacterEncoding("utf-8");%>
<%
    String inid = request.getParameter("inid");
	String inpasswd  = request.getParameter("inpasswd");
	
	InDBBean logon = InDBBean.getInstance();
    int check= logon.userCheck(inid, inpasswd);

    if(check==1){
		session.setAttribute("inid", inid);
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