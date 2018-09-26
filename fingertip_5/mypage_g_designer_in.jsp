<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>

<section class="hoc container clear">
      <ul class="nav nav-tabs">
      	<li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_su.jsp">기업개인정보수정</a></li>    
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_res.jsp">예약조회</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_in.jsp">매장정보등록</a></li>
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=mypage_g_designer_in.jsp">디자이너 등록</a></li>
      </ul>          

        <div class="col-md-12">
     <p></p><br>
    	    <div align="center"><h2>디자이너 등록</h2>
    	    <p></p></div>
<form method="post" class="form-horizontal" name="writeform" 
     action="mypage_g_designer_in_pro.jsp"  enctype="multipart/form-data">
        <div class="form-group">
         	<label class="col-sm-3 control-label" id="de_name">디자이너 이름</label>
	        <div class="col-sm-6">
	         <input class="form-control" name="de_name" type="text" placeholder="디자이너 이름을 입력하세요">	          
	        </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" id="de_job">디자이너 직책</label>
          <div class="col-sm-6">
            <input class="form-control" name="de_job" type="text" placeholder="디자이너 직책을 입력하세요">
          </div>
        </div> 
        <div class="form-group">
            <label class="col-sm-3 control-label" id="de_career">디자이너 경력</label>
          <div class="col-sm-6">
			<input class="form-control" name="de_career" type="text" placeholder="디자이너 경력을 입력하세요">
          </div>
        </div>                
        <div class="form-group">
            <label class="col-sm-3 control-label" id="de_picture">디자이너 사진</label>
          <div class="col-sm-6">
          	<input type="file" class="form-control-file" name="de_picture">
          </div>
        </div>             
        <div class="form-group">
	        <div class="col-sm-12 text-center">
		        <button type="submit" onclick="checkForm(this.form)" class="btn btn-danger col-lg"><i class="fa fa-check spaceLeft"></i> 등록</button>
		    	<input type="reset" class="btn btn-default col-lg" value="다시작성">
		    </div>  
	    </div>                    
        </form>
        </div>
</section>