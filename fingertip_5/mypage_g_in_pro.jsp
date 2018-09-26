<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "store.register.ShopBookDBBean" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<% request.setCharacterEncoding("utf-8");%>

<%
  String realFolder = "";//웹 어플리케이션상의 절대 경로
  String filename ="";
  MultipartRequest imageUp = null; 

  String saveFolder = "/imageFile";//파일이 업로드되는 폴더를 지정한다.
  String encType = "utf-8"; //엔코딩타입
  int maxSize = 2*1024*1024;  //최대 업로될 파일크기 5Mb
  //현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다
  ServletContext context = getServletContext();
  realFolder = context.getRealPath(saveFolder);  

  try{
     //전송을 담당할 콤포넌트를 생성하고 파일을 전송한다.
     //전송할 파일명을 가지고 있는 객체, 서버상의 절대경로,최대 업로드될 파일크기, 문자코드, 기본 보안 적용
     imageUp = new MultipartRequest(
		 request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
   
     //전송한 파일 정보를 가져와 출력한다
     Enumeration<?> files = imageUp.getFileNames();
   
     //파일 정보가 있다면
     while(files.hasMoreElements()){
       //input 태그의 속성이 file인 태그의 name 속성값 :파라미터이름
       String name = (String)files.nextElement();
   
       //서버에 저장된 파일 이름
       filename = imageUp.getFilesystemName(name);
     }
  }catch(Exception e){
     e.printStackTrace();
  }
%>

<jsp:useBean id="store" scope="page" 
       class="store.register.ShopBookDataBean">
</jsp:useBean>

<%
  String sto_name = imageUp.getParameter("sto_name");
String sto_sel = imageUp.getParameter("sto_sel");
  String sto_address = imageUp.getParameter("sto_address");
  String sto_num = imageUp.getParameter("sto_num");
  String sto_time = imageUp.getParameter("sto_time");
  String sto_explanation = imageUp.getParameter("sto_explanation");
  String sto_picture = imageUp.getParameter("sto_picture");

  /*  String h1 = imageUp.getParameter("sto_time_h1");*/
  String h1 =  (imageUp.getParameter("sto_time_h1").length()==1)?
		  "0"+ imageUp.getParameter("sto_time_h1"):
		  imageUp.getParameter("sto_time_h1");
  String m1 =  (imageUp.getParameter("sto_time_m1").length()==1)?
		  "0"+ imageUp.getParameter("sto_time_m1"):
			  imageUp.getParameter("sto_time_m1");
  String h2 =  (imageUp.getParameter("sto_time_h2").length()==1)?
		  "0"+ imageUp.getParameter("sto_time_h2"):
			  imageUp.getParameter("sto_time_h2");
  String m2 =  (imageUp.getParameter("sto_time_m2").length()==1)?
		  "0"+ imageUp.getParameter("sto_time_m2"):
			  imageUp.getParameter("sto_time_m2");

	store.setSto_name(sto_name);
	store.setSto_sel(sto_sel);
	store.setSto_address(sto_address);
	store.setSto_num(sto_num);
	store.setSto_time(h1+":"+m1+"~"+h2+":"+m2);
	store.setSto_picture(filename);
	store.setSto_explanation(sto_explanation);

  ShopBookDBBean storeProcess = ShopBookDBBean.getInstance();
  storeProcess.insertArticle(store);

  response.sendRedirect("fingermainFirst.jsp");
  /* response.sendRedirect("bookList.jsp?book_kind="+book_kind); */
%>