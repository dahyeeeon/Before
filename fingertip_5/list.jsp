<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

 <%@ page import = "store.register.ShopBookDBBean" %>
<%@ page import = "store.register.ShopBookDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<style>
body { padding-right: 0 !important }
div .panel-default>.panel-heading {background-color:#F7AF9D;}
.modal-header {
    min-height: 16.42857143px;
    padding: 15px;
    border-bottom: 0;
}
.modal-footer {
    padding: 15px;
    text-align: right;
    border-top: 0;
}

   .results tr[visible='false'],
   .no-result{
     display:none;
   }

   .results tr[visible='true']{
     display:table-row;
   }

   .counter{
     padding:8px; 
     color:#ccc;
   }
</style> 
<section class="hoc container clear">
<%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
request.setCharacterEncoding("utf-8");
    String pageNum = request.getParameter("pageNum");

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int number = 0;
    List<ShopBookDataBean> storeList = null; 
    
    ShopBookDBBean dbPro = ShopBookDBBean.getInstance();
    count = dbPro.getArticleCount();
   
    if (count > 0) {
        storeList = dbPro.getArticles(startRow, pageSize);
    }

   number = count-(currentPage-1)*pageSize;
%>

<div class="masthead">
 <h3 class="text-muted" ><b>매장 목록</b></h3>
<blockquote>
  <footer>매장을 조회하실 수 있습니다.</footer>
</blockquote>
<div class="form-group pull-right">
    <input type="text" class="search form-control" placeholder="검색 내용을 입력하세요">
</div>
<% if (count == 0) { %>

<table>
<tr>
    <td align="center">
              저장된 매장이 없습니다.
    </td>
</table>

<% } else {%>
<table class="table table-hover table-bordered results"> 
     <thead>
    <tr height="30"> 
    
      <th align="center"  width="250" >매장명</th> 
        <th align="center">매장주소</th> 
      <th align="center">매장상세주소</th>
      <th align="center"  width="150" >매장번호</th> 
       <th align="center"  width="50" >운영시간 </th> 
     

    </tr>
      </thead>
  <tbody>
<%  
   for (int i = 0 ; i < storeList.size() ; i++) {
       ShopBookDataBean store = storeList.get(i);
%>
   <tr height="30">
   
    <td  width="250" align="left">
           
       <a href="store.jsp?num=<%=store.getSto_id()%>&pageNum=<%=currentPage%>" data-toggle="modal" data-target="#myModal">
           <%=store.getSto_name()%></a> 
 </td>
  
  <td width="150"><%=store.getSto_sel()%></td>
  <td width="150"> <%=store.getSto_address()%></td>
    <td width="150"><%=store.getSto_num()%></td>
     <td width="150"><%=store.getSto_time()%></td>

  
  </tr>

  
<%}%>
</table>

<%}%>

<%
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
      int startPage =1;
      
      if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
      else
           startPage = ((int)(currentPage/10)-1)*10 + 1;

      int pageBlock = 10;
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>
          <a href="fingermainFirst.jsp?nav=list.jsp?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
        <div align="center">
           <a href="fingermainFirst.jsp?nav=list.jsp?pageNum=<%= i %>">[<%= i %>]</a>
           </div>
<%      }
        
        if (endPage < pageCount) {  %>
        <a href="fingermainFirst.jsp?nav=list.jsp?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>
</div>
</section>

</body>
</html>



   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
   <script>
   $(document).ready(function() {
     $(".search").keyup(function () {
      var searchTerm = $(".search").val();
      var listItem = $('.results tbody').children('tr');
      var searchSplit = searchTerm.replace(/ /g, "'):containsi('")
      
     $.extend($.expr[':'], {'containsi': function(elem, i, match, array){
         return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
      }
     });
      
     $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function(e){
      $(this).attr('visible','false');
     });

     $(".results tbody tr:containsi('" + searchSplit + "')").each(function(e){
      $(this).attr('visible','true');
     });

     var jobCount = $('.results tbody tr[visible="true"]').length;
      $('.counter').text(jobCount + ' item');

     if(jobCount == '0') {$('.no-result').show();}
      else {$('.no-result').hide();}
           });
   });   
   </script>