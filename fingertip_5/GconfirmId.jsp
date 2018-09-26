<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "db.login.GMemberDao" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head><title>ID 중복확인</title>

<link href="style.css" rel="stylesheet" type="text/css">

</head>
<%

    request.setCharacterEncoding("utf-8");
   String cid = request.getParameter("cid");
   GMemberDao manager = GMemberDao.getInstance();
    int check= manager.GconfirmId(cid);

%>
<body>

<%

   if(check == 1) {
	   %>


<table width="270" border="0" cellspacing="0" cellpadding="5">

 <div align="center"> <%=cid%>이미 사용중인 아이디입니다.

 </div>

</table>

<form name="checkForm" method="post" action="GconfirmId.jsp">
   <div align="center"> 

      다른 아이디를 선택하세요.<p>

       <input type="text" size="10" maxlength="12" name="cid"> 
      <input type="submit" value="ID중복확인">

</div>
</form>


<%

    } else {

%>

 <div align="center">
     <p>입력하신 <%= cid %> 는 사용하실 수 있는 ID입니다. </p>

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

        opener.document.userinput.cid.value= '<%=cid%>';
        self.close();

        }

</script>
