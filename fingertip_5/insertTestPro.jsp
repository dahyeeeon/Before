<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<% 
   String inid = request.getParameter("inid");
   String inpasswd= request.getParameter("inpasswd");
   String inemail= request.getParameter("inemail");
   String inname = request.getParameter("inname");    
   String innum = request.getParameter("innum");  

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{
 	 String jdbcUrl="jdbc:mysql://localhost:3306/cban";
     String dbId="cban";
     String dbPass="1234";
 	 
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into individual values (?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,inid);
     pstmt.setString(2,inpasswd);
     pstmt.setString(3,inemail);
 	 pstmt.setString(4,inname);
 	 pstmt.setString(5,innum);
 	 pstmt.executeUpdate();
 	 
 	 

 	}catch(Exception e){ 
 		e.printStackTrace();
 		str="individual 테이블에 새로운 레코드를 추가에 실패했습니다";
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>


  <%-- <p class="text-center"><b><%=inid %></b> 님 회원이 되셨습니다.</p> --%>
  <script>   
      location.href = 'fingermainFirst.jsp?nav=cookieLoginForm.jsp'; 
  </script>
