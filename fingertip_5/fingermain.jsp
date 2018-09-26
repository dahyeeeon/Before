
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 <%
 request.setCharacterEncoding("utf-8");
  String content = request.getParameter("nav");

  if(content==null){

    content="fing3.jsp";
  }

  content=content;

%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="assets/bootstrap-3.3.2/css/bootstrap.css" rel="stylesheet">
<link href="assets/bootstrap-3.3.2/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton|Indie+Flower" rel="stylesheet">
<link href="layout/styles/fingertip.css" rel="stylesheet">


<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="assets/bootstrap-3.3.2/js/fingertip.js"></script>
<script src="assets/bootstrap-3.3.2/js/bootstrap.min.js"></script>
<title>fingertip</title>
</head>

<body style="text-center">
<div class="content_main">
	<div class="a">
	<jsp:include page="fing1First.jsp" flush="false"/> <!-- 메뉴1 -->
	<jsp:include page="<%=content%>" flush="false"/><!-- 메인내용 fing3.jsp~--> 

	<jsp:include page="fing4.jsp" flush="false"/> <!--  풋터-->
</div>
	<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
</body>
</html>
