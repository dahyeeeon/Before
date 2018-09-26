<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>

.thumbnail {
padding: 15px;
}

img {
width:200px;
height:150px;
}

</style>
<!--메뉴버튼-->
 <section class="hoc container clear"> 
  <div class="masthead">
        <h3 class="text-muted"><b>reservation</b></h3>

        <ul class="nav nav-tabs">
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index.jsp">매장선택</a></li>
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=index5.jsp">디자이너선택</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index2.jsp">날짜선택</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index3.jsp">시술선택</a></li>

      </ul>
      <br>

  <h3 class="text-muted" ><b>디자이너 선택</b></h3>
<blockquote>
  <footer>예약 시 한 타임 당 한 분만 시술 가능합니다.</footer>
</blockquote>
  <div align="center" class="row">
  <div class="col-md-4">
      <img src="images/designer2.jpg">
      <div class="caption">
        <h4>하나 원장</h4>
		<label class="radio-inline"><input type="radio" name="radio" value="radio1"> 선택</label>
    </div><br>
</div>


<div class="col-md-4">
<img src="images/designer5.jpg">
<div class="caption">
<h4>두리 실장</h4>
<label class="radio-inline"><input type="radio" name="radio" value="radio3"> 선택</label>
</div><br>
</div>



   <br><br>

 </div>
  <div align="center">
  <button class="btn btn" onClick="location.href='fingermainFirst.jsp?nav=index.jsp';">이전단계</button>
  <button class="btn btn" onClick="location.href='fingermainFirst.jsp?nav=index2.jsp';">다음단계</button>
</div>

</section>
