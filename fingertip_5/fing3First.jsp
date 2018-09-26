<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%

  String content = request.getParameter("nav");

  if(content==null){

    content="fing3First.jsp";
  }

  content=content;

%>     
<!-- 메인내용1 -->
<div id="pageintro">
	<jsp:include page="fing3_1First.jsp" flush="false"/>
</div>
<div class="wrapper row3">
 <jsp:include page="fing3_2.jsp" flush="false"/>
</div>

<div class="wrapper row3">
 <jsp:include page="fing3_3.jsp" flush="false"/>
</div>
