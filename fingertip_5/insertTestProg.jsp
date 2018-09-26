<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<% 
   String cid = request.getParameter("cid");
   String cpasswd= request.getParameter("cpasswd");
   String cemail = request.getParameter("cemail");
   String cname = request.getParameter("cname");  
   String cnum = request.getParameter("cnum");  
   

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{
 	 String jdbcUrl="jdbc:mysql://localhost:3306/cban";
     String dbId="cban";
     String dbPass="1234";
 	 
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into company values (?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,cid);
     pstmt.setString(2,cpasswd);
     pstmt.setString(3,cemail);
 	 pstmt.setString(4,cname);
 	 pstmt.setString(5,cnum);
 	 pstmt.executeUpdate();
 	 
 	 

 	}catch(Exception e){ 
 		e.printStackTrace();
 		str="company 테이블에 새로운 레코드를 추가에 실패했습니다";
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>


 <%--  <p class="text-center"><b><%=cid %></b> 님 회원이 되셨습니다.</p> --%>
  <script>
      location.href = 'fingermainFirst.jsp?nav=cookieLoginFormg.jsp';
  </script>
