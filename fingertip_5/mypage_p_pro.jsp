<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.login.InDBBean" %>
<%@ page import="java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

	<jsp:useBean id="article" scope="page" class="db.login.InDataBean">
	<jsp:setProperty name="article" property="*"/>
	</jsp:useBean>
<%
 
    String pageNum = request.getParameter("pageNum");

	InDBBean dbPro = InDBBean.getInstance();
    int check = dbPro.updateArticle(article); 

    if(check==1){
    	out.print(check); 
%>
	 <meta http-equiv="Refresh" content="0;url=fingermainFirst.jsp?pageNum=<%=pageNum%>" >
<% }else{%>
      <script type="text/javascript">      
      <!--      
        alert("비밀번호가 맞지 않습니다.");
        history.go(-1);
      -->
     </script>
<%
  }
%> 