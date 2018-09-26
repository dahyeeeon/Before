<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
a.btn{
padding:6px 12px;
}
.modal-open {
    padding-right: 0px !important;
}
.modal-header {
  min-height: 16.42857143px;
  padding: 15px;
  border-bottom: 0px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 0px;
}

</style>
 <section class="hoc container clear"> 
   <div class="masthead">
        <h3 class="text-muted"><b>reservation</b></h3>

        <ul class="nav nav-tabs">
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index.jsp">매장선택</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index5.jsp">디자이너선택</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index2.jsp">날짜선택</a></li>
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=index3.jsp">시술선택</a></li>

      </ul>
      <br>
  <h3 class="text-muted" ><b>시술 선택</b></h3>
<blockquote>
  <footer>기장과 스타일을 체크해주세요.</footer>
</blockquote>
<form>
<div class=bs-example data-example-id=hoverable-table> 
                            <table class="type03">
                                <tr>
                                    <th scope="row">기장</th>
                                    <td>
                                        <div class="checkbox checkbox-warning" align="center">
                                            <input id="checkbox3" type="checkbox" name="inreshair" value="롱">
                                            <label for="checkbox3">롱
                                            </label>
                                            <input id="checkbox4" type="checkbox" name="inreshair" value="미디엄">
                                            <label for="checkbox4">미디엄
                                            </label>
                                            <input id="checkbox5" type="checkbox" name="inreshair" value="숏">
                                            <label for="checkbox5">숏
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">스타일</th>
                                    <td>
                                        <div class="checkbox checkbox-warning" align="center">
                                            <input id="checkbox6" type="checkbox" name="style" value="커트">
                                            <label for="checkbox6">커트
                                            </label>
                                            <input id="checkbox7" type="checkbox" name="style" value="펌">
                                            <label for="checkbox7">펌
                                            </label>
                                            <input id="checkbox8" type="checkbox" name="style" value="염색">
                                            <label for="checkbox8">염색
                                            </label>
                                            <label for="checkbox8" type="checkbox" name="style" value="매직">매직
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            </table>
           </div>
</form>
      </div>  
      
      <h3 class="text-muted" ><b>시술메모</b></h3>
      <blockquote>
  <footer> 원하시는 스타일이 있으시면 메모해주세요. (없는 경우 작성하지 않아도 됩니다.)</footer>
</blockquote>

<textarea placeholder =" 내용을 입력하세요" name="content" rows="10" cols="122" 
              style="ime-mode:active;"></textarea>


<br><br><br>
<div align="center">
<button class="btn btn" onClick="location.href='fingermainFirst.jsp?nav=index2.jsp';">이전단계</button>
<a href="#" class="btn btn" data-toggle="modal" data-target="#myModal">예약완료</a>
</div>

</section>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
<br><br>
      <div class="modal-body" align="center">
        <h3>예약이 완료 되었습니다.</h3>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn" onClick="location.href='fingermainFirst.jsp'">확인</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
