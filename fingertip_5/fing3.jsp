<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%

  String content = request.getParameter("nav");

  if(content==null){

    content="fing3.jsp";
  }

  content=content;

%>     
<!-- 메인내용1 -->
<div id="pageintro">
	<jsp:include page="fing3_1.jsp" flush="false"/>
</div>

<div class="wrapper row3">
 <jsp:include page="fing3_2.jsp" flush="false"/>
</div>

<div class="wrapper row3">
 <jsp:include page="fing3_3.jsp" flush="false"/>
</div>



<!-- 메인내용3_3 -->


<!-- 메인내용4(갤러리)
<div class="wrapper row3"> 
 <a href="http://localhost/gallery/index.php">갤러리</a>
</div>
-->