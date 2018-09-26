<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
<link href="assets/bootstrap-3.3.2/css/picker.css" rel="stylesheet">
 <section class="hoc container clear"> 
     <div class="masthead">
        <h3 class="text-muted"><b>reservation</b></h3>

        <ul class="nav nav-tabs">
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index.jsp">매장선택</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index5.jsp">디자이너선택</a></li>
        <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=index2.jsp">날짜선택</a></li>
        <li role="presentation"><a href="fingermainFirst.jsp?nav=index3.jsp">시술선택</a></li>

      </ul>
<br>

<h3 class="text-muted"><b>날짜 선택</b></h3>
   <blockquote>
     <footer>시술 받으실 날짜와 시간을 선택해주세요.</footer>
   </blockquote>

<form method="post" class="form-horizontal" name="writeform" action="index2_pro.jsp"  >
    <div class="col-sm-6">
        <div class="form-group">
            <div class='input-group date' id='datetimepicker6'>
                <input type='text' name="inresdatetime" class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>

</form>
</div>
<br><br><br><br><br>
<br>

<div class="col-sm-12" align="center">
 <button class="btn btn" onClick="location.href='fingermainFirst.jsp?nav=index5.jsp';">이전단계</button>
 <button class="btn btn" onClick="location.href='fingermainFirst.jsp?nav=index3.jsp';">다음단계</button>
<!-- <input class="btn btn" type="submit">날짜 전송</button> -->
</div>
</section>

<script type="text/javascript">
$(document).ready(function () {
    $('#datetimepicker6').datetimepicker({
    });
});
</script>
