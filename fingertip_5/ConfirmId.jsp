<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "db.login.MemberDao" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head><title>ID 중복확인</title>

<link href="style.css" rel="stylesheet" type="text/css">

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>

<%

    request.setCharacterEncoding("utf-8");
   String inid = request.getParameter("inid");
    MemberDao manager = MemberDao.getInstance();
    int check= manager.confirmId(inid);

%>

<body>

<%

   if(check == 1) {
	   %>

<table width="270" border="0" cellspacing="0" cellpadding="5">

  <div align="center"> <%=inid%>이미 사용중인 아이디입니다.

  </div>

</table>

<form name="checkForm" method="post" action="ConfirmId.jsp">

     <div align="center"> 

      다른 아이디를 선택하세요.<p>

      <input type="text" size="10" maxlength="12" name="inid"> 
      <input type="submit" value="ID중복확인">

</div>

</form>


<%

    } else {

%>

    <div align="center"> 

     <p>입력하신 <%= inid %> 는 사용하실 수 있는 ID입니다. </p>

      <input type="button" value="닫기" onclick="setid()">

	</div>

<%

   }

%>

</body>

</html>

<script>

 function setid()

    {         

        opener.document.userinput.inid.value= '<%=inid%>';
        self.close();

        }

</script>
