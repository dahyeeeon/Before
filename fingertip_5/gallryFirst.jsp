<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<style>
div.t_style, p,.radio, .checkbox{
padding-right:15px;
padding-left:15px;
display:table-cell;
}

</style>
<section class="hoc container clear">
        <h2 class="content-section text-center">
            <i class="fa fa-scissors fa-lg" aria-hidden="true"></i>&nbsp;S T Y L E</h2>
    	<div class="t_style">
 					<p><strong>길이</strong></p>
                    <div class="checkbox checkbox-inline checkbox-primary">
                        <input type="checkbox" id="inlineCheckbox1">
                        <label for="inlineCheckbox1"> 롱 </label>
                    </div>
                    <div class="checkbox checkbox-success checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2">
                        <label for="inlineCheckbox2"> 미디엄 </label>
                    </div>
                    <div class="checkbox checkbox-inline checkbox-danger">
                        <input type="checkbox" id="inlineCheckbox3">
                        <label for="inlineCheckbox3"> 숏 </label>
                    </div>
                    
 					<p><strong>스타일</strong></p>
                    <div class="checkbox checkbox-inline checkbox-primary">
                        <input type="checkbox" id="inlineCheckbox4">
                        <label for="inlineCheckbox4"> 컷 </label>
                    </div>
                     <div class="checkbox checkbox-inline checkbox-primary">
                        <input type="checkbox" id="inlineCheckbox5">
                        <label for="inlineCheckbox5"> 염색 </label>
                    </div>
                    <div class="checkbox checkbox-success checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox6">
                        <label for="inlineCheckbox6"> 펌 </label>
                    </div>
                    <div class="checkbox checkbox-inline checkbox-danger">
                        <input type="checkbox" id="inlineCheckbox7">
                        <label for="inlineCheckbox7"> 매직 </label>
                    </div>
                    <p><button type="submit" class="btn btn-default" disabled="disabled">검색</button></p>
                </div>

   
<br>
<div class="row">
	<div class='list-group gallery'>
		<div class="col-md-3">
			<a class="thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
			</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
		</div>
		<div class="col-md-3">
			<a class="fancybox thumbnail" rel="ligthbox"><img class="img-responsive" src="http://placehold.it/320x320"></a>
	
		</div>
	</div>
	
<jsp:include page="moseoverFirst.jsp" flush="false"/> 
	
	<div class="text-center">
	 <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
	</div>   
        </div> 
        <div class="content-section text-center">
         <button class="btn btn-hero btn-lg" onClick="location.href='fingermain_g.jsp?nav=g_write2.jsp'">글쓰기</button> 
         </div>  
      </section>

      
      <script>
      
      $(".hover").mouseleave(
    		  function () {
    		    $(this).removeClass("hover");
    		  }
    		);
      </script>