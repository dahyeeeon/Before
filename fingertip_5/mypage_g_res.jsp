<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="hoc container clear"> 
      <ul class="nav nav-tabs">
      	<li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_su.jsp">기업개인정보수정</a></li>        
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=mypage_g_res.jsp">예약조회</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_in.jsp">매장정보등록</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_g_designer_in.jsp">디자이너 등록</a></li>
      </ul>
        <div class="col-lg-12">
      <p></p><br>
    	    <div align="center"><h2>기업 예약 조회</h2>
    	    
    	    	  <p></p>
       
    	    </div>
  
        <form class="form-horizontal">
  
   
    <table class="table table-striped table-hover table-responsive table-condensed">

        <tr>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">NO</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">예약번호</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">고객명</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">고객번호</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">날짜</span></h4>
            </th>           
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">상태</span></h4>
            </th>           
        </tr>      
        
        <tr align="center">
            <td class="col-lg-1">
                <span style="font-size: 15px;"> 1 </span>
            </td>
            <td class="col-lg-1">
                <span style="font-size: 15px;"> F10487 </span>
            </td>
            <td class="col-lg-2">
                <span style="font-size: 15px;"> 나비선 </span>
            </td>
            <td class="col-lg-2">
                <span style="font-size: 15px;"> 010-1234-1234 </span>
            </td>          
            <td class="col-lg-2">
                <span style="font-size: 15px;"> 17.11.9 </span>
            </td>
            <td class="col-lg-3">
                <button type="button" class="btn btn-info col-sm" data-toggle="modal" data-target="#deModal"><span style="margin-right: 5px" class="glyphicon glyphicon-align-justify"></span>상세</button>
                <button type="button" class="btn btn-danger col-sm" data-toggle="modal" data-target="#okModal"><i class="fa fa-times spaceLeft"></i> 예약취소</button>
            </td>
        </tr>
    </table>      
           
  <!-- deModal -->
  <div class="modal fade" id="deModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">상세 예약내역</h4>
        </div>
        <div class="modal-body">
          <p> · 예약 시간 : 1PM </p>
          <p> · 예약 메모 : 셋팅펌 해주세요~ </p>
          <p> · 스타일 상세 내용 : 롱+펌 </p>
          <p> · 디자이너 : 두리 </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- okModal -->
  <div class="modal fade" id="okModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">예약을 취소하시겠습니까?</h4>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>
        
        
        </form>
          </div>
</section>