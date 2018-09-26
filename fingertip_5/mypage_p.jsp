<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="db.login.InDBBean" %>
<%@ page import="db.login.InDataBean" %>
<%@ page import="java.sql.*"%>


	
<%--  <jsp:useBean id="article" class="db.login.InDataBean">
     <jsp:setProperty name="article" property="*"/>
 </jsp:useBean> --%>
 
 <%
 String inid = request.getParameter("inid");
 
 try{
	  inid = (String)session.getAttribute("inid");
	  String pageNum = request.getParameter("pageNum");

 	  InDBBean dbPro = InDBBean.getInstance(); 
      InDataBean article =  dbPro.updateGetArticle(inid);
%>

<section class="hoc container clear"> 
      <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=mypage_p.jsp">회원정보수정</a></li>
		<li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_p_res.jsp">예약조회</a></li>
      </ul>

        <div class="col-lg-12">
         <p></p><br>
    	    <div align="center"><h2>개인회원 정보 수정</h2>
    	 <p></p>
    	    </div>
        
        <form class="form-horizontal" method="post" action="mypage_p_pro.jsp?pageNum=<%=pageNum%>">
             
        <div class="form-group">
         <label class="col-sm-3 control-label" for="inid">아이디</label>
        <div class="col-sm-6">
          <input class="form-control" id="inid" value="<%=article.getInid()%>" type="text" placeholder="아이디" disabled>
        </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inpasswd">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="inpasswd" value="<%=article.getInpasswd() %>" type="password" placeholder="비밀번호">       
        </div>
        </div>
         <!--  <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">신규 비밀번호</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck"  type="password" placeholder="비밀번호 변경을 원하시면 신규 비밀번호를 입력해 주세요">
             <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
             </div>
          </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">신규 비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호를 한번 더 입력해 주세요">
             </div>
          </div> -->
          <div class="form-group">
          <label class="col-sm-3 control-label" for="inemail">이메일</label>
            <div class="col-sm-6">
            <input class="form-control" id="inemail" value="<%=article.getInemail() %>" type="email" placeholder="이메일">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inname">이름</label>
          <div class="col-sm-6">
            <input class="form-control" id="inname" value="<%=article.getInname() %>" type="text" placeholder="이름">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="innum">휴대폰 번호</label>
          <div class="col-sm-6">
            <input class="form-control" id="innum" value="<%=article.getInnum() %>" type="tel" placeholder="-없이 입력해주세요">
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
