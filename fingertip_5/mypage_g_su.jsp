<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="db.login.CoDBBean" %>
<%@ page import="db.login.CoDataBean" %>
<%@ page import="java.sql.*"%>


	
<%--  <jsp:useBean id="article" class="db.login.InDataBean">
     <jsp:setProperty name="article" property="*"/>
 </jsp:useBean> --%>
 
 <%
 String cid =request.getParameter("cid");
 
 try{
	  cid = (String)session.getAttribute("cid");
	  String pageNum = request.getParameter("pageNum");

 	  CoDBBean dbPro = CoDBBean.getInstance(); 

      CoDataBean article =  dbPro.updateGetArticle(cid);
%>

<section class="hoc container clear"> 
      <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=mypage_g_su.jsp">기업개인정보수정</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_res.jsp">예약조회</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_in.jsp">매장정보등록</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_designer_in.jsp">디자이너 등록</a></li>
  
      </ul>

        <div class="col-lg-12">
         <p></p><br>
    	    <div align="center"><h2>기업회원 정보 수정</h2>
    	    	  <p></p>
    	    </div>
        
        <form class="form-horizontal" method="post" action="mypage_g_su_pro.jsp?pageNum=<%=pageNum%>">
        <input type=hidden name=uid value="<%=article.getCid()%>">
        
        <div class="form-group">
         <label class="col-sm-3 control-label" for="cid">아이디</label>
        <div class="col-sm-6">
          <input class="form-control" name="cid" id="cid" value="<%=article.getCid()%>" type="text" placeholder="아이디" disabled>
        </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="cpasswd">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" name="cpasswd" id="cpasswd" value="<%=article.getCpasswd() %>" type="password" placeholder="비밀번호">       
        </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="cemail">이메일</label>
            <div class="col-sm-6">
            <input class="form-control" name="cemail" id="cemail" value="<%=article.getCemail() %>" type="email" placeholder="이메일">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="cname">사업자 이름</label>
          <div class="col-sm-6">
            <input class="form-control" name="cname" id="cname" value="<%=article.getCname() %>" type="text" placeholder="이름">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="cnum">사업자 등록번호</label>
          <div class="col-sm-6">
            <input class="form-control" id="cnum" name="cnum" value="<%=article.getCnum() %>" type="tel" placeholder="-없이 입력해주세요">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <input class="btn btn-primary" type="submit">
            <button class="btn btn-danger" type="submit">취소</button>
          </div>
        </div>
 <%
 }catch(Exception e){} 
 %>
        </form>
        </div>
     

</section>