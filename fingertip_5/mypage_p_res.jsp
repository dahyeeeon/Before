<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="hoc container clear">

		<ul class="nav nav-tabs">
			<li role="presentation"><a href="fingermainFirst.jsp?nav=mypage_p.jsp">회원정보수정</a></li>
	        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=mypage_p_res.jsp">예약조회</a></li>
	    </ul>
	    <div class="col-lg-12">
      	<p></p><br>
    	    <div align="center"><h2>개인 예약 조회</h2>   	    
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
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">매장명</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">디자이너</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">지역</span></h4>
            </th>
            <th>
                <h4 align="center" style="font-size:Small"><span style="font-weight:bolder">시술</span></h4>
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
            <td class="col-lg-2">
                <span style="font-size: 15px;"> F10487 </span>
            </td>
            <td class="col-lg-1">
                <span style="font-size: 15px;"> 황헤어 </span>
            </td>
            <td class="col-lg-1">
                <span style="font-size: 15px;"> 두리 </span>
            </td>
            <td class="col-lg-1">
                <span style="font-size: 15px;"> 강남구 </span>
            </td>
            <td class="col-lg-1">
                <span style="font-size: 15px;"> 롱/펌</span>
            </td>
            <td class="col-lg-2">
                <span style="font-size: 15px;"> 17.11.9 </span>
            </td>
            <td class="col-lg-3">
                <button type="button" class="btn btn-info col-sm" data-toggle="modal" data-target="#deModal"><span style="margin-right: 5px" class="glyphicon glyphicon-align-justify"></span>상세</button>
                <button type="button" class="btn btn-danger col-sm" data-toggle="modal" data-target="#okModal">수정/취소</button>
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
          <h4 class="modal-title">예약을 확인합니다.</h4>
        </div>
        <div class="modal-body">
          <p>수정/취소를 선택하세요.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">수정</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>

   
		</form>
          </div>
</section>