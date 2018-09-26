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

    #map {
        height: 400px;
        width: 100%;
       }  
       
      #search{
      margin: 20px 0 15px 0;
      width: 100%;
      }       
      
      #div1{
      margin-top: 15px;
      }
      
  </style>
<section class="hoc container clear">  
<%
   request.setCharacterEncoding("utf-8");

   String name_keyword = request.getParameter("name_keyword");
   System.out.print(name_keyword);
   String wr_gugun =request.getParameter("wr_gugun");

%>

 <%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
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
       storeList = dbPro.getArticles2(startRow, pageSize,name_keyword,wr_gugun);
    }

   number = count-(currentPage-1)*pageSize;
%>
     
<!--메뉴버튼-->

<div class="masthead">
  <h3 class="text-muted"><b>reservation</b></h3>

  <ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="fingermainFirst.jsp?nav=index.jsp">매장선택</a></li>
  <li role="presentation"><a href="fingermainFirst.jsp?nav=index5.jsp">디자이너선택</a></li>
  <li role="presentation"><a href="fingermainFirst.jsp?nav=index2.jsp">날짜선택</a></li>
  <li role="presentation"><a href="fingermainFirst.jsp?nav=index3.jsp">시술선택</a></li>
</ul>
<br>

  <h3 class="text-muted" ><b>매장 선택</b></h3>
<blockquote>
  <footer>시술 받으실 매장을 검색해주세요.</footer>
</blockquote>
  <div class="col-md-12 column">
     <div class="panel panel-default">
        <div class="panel-body">
           <div class="row">
           <div class="col-md-12" id="div2">
              </div>     
    <form name="fwrite" method="post" action="fingermainFirst.jsp?nav=index.jsp">   
   <div class="col-sm-6" id="div1">
         <select class="form-control" name="wr_sido" OnChange="changeRegion(fwrite)"></select>
         </div>
         <div class="col-sm-6" id="div1">
         <select class="form-control" name="wr_gugun"></select> 
            </div>
            <div class="col-md-12" id="search">
                      <input type="text" class="form-control" name="name_keyword" placeholder="매장명을 입력해주세요">
                     </div>
            <div class="form-group">
               <div class="col-sm-12 text-center">
                  <button class="btn btn" type="submit">검색 <i class="fa fa-check spaceLeft"></i></button>
               </div>
            </div>
            </form>
         </div>
      </div>
   </div>
   
   

<%    if(storeList==null){
   
}else{ %>
   
<% if (count == 0) { %>
<table>
<tr>
    <td align="center">
              매장이 없습니다.
    </td>
</table>

<% } else

{%>
<table> 
    <tr height="30"> 
      <td align="center">매장 선택</td> 
      <td align="center">매장명</td> 
        <td align="center">매장주소</td> 
      <td align="center">매장상세주소</td>
      <td align="center" >매장번호</td> 
       <td align="center">운영시간 </td> 
    </tr>
    
<%  
   for (int i = 0 ; i < storeList.size() ; i++) {
       ShopBookDataBean store = storeList.get(i);
%>
   <tr height="30">
    <td><label class="radio-inline"><input type="radio" name="radio" value="radio2"> 선택</label></td>
    <td align="left">
<a href="#myModal" data-toggle="modal">
<%=store.getSto_name()%></a> 
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
       <div class="modal-content">
          <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
             <div class="modal-body">
                   <div class="col-lg-12">
                    <div class="panel-heading">
                       <div align="right">
                     <h1 class="text-center"><%=store.getSto_name()%></h1>
                     </div><hr>
                  </div>
              <div class="panel-body">
                 <div class="panel-body text-left">
                 <div class="col-md-12" id="div2">
                 <div id="map"></div>
             </div>
             </div>
             <hr>
            <div class="panel panel-default">
               <!-- Default panel contents -->
               <div class="panel-heading">매장주소</div>
               <div class="panel-body">
                  <p><i class="glyphicon glyphicon-home"></i> <%=store.getSto_sel()%> <%=store.getSto_address()%></p>
                  <p><i class="glyphicon glyphicon-earphone"></i> <%=store.getSto_num()%></p>
               </div>
            </div>
            <div class="panel panel-default">
               <!-- Default panel contents -->
               <div class="panel-heading">운영시간</div>
               <div class="panel-body">
                  <p style='line-height:2em'>근무시간:<%=store.getSto_time()%></p>
               </div>
            </div>
            <div class="panel panel-default">
                <!-- Default panel contents -->
               <div class="panel-heading">매장정보</div>
               <div class="panel-body">
                   <p><%=store.getSto_explanation()%></p>
                 </div>
            </div>
            <div class="panel panel-default">
                <!-- Default panel contents -->
               <div class="panel-heading">매장사진</div>
               <div class="panel-body">
                   <p><img src="images/int1.jpg"></p>
                 </div>
            </div>  

         </div>
      </div>
   </div>
         <div class="modal-footer">
     
         </div>
       </div>
    </div>
 </div> <!-- 모달 끝 -->

 </td>
 
  <td><%=store.getSto_sel()%></td>
  <td><%=store.getSto_address()%></td>
    <td><%=store.getSto_num()%></td>
     <td><%=store.getSto_time()%></td>
  </tr>
<%}%>
<%}%>
</table>
<%}%>
<br><br>
 <div align="center">
<button class="btn btn" onClick="location.href='fingermainFirst.jsp?nav=index5.jsp';">다음단계</button>   
 </div>
 </div>

<br><br>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCqT9GR5FZjVKodrZwdw1flTvXvgFmO_U"></script>
 <script>

function initialize() {
	var zoomLevel = 15;
	var markerTitle = "황헤어";
	var myLatlng = new google.maps.LatLng(37.508, 127.033); 
	var mapOptions = {
						zoom: zoomLevel,
						center: myLatlng,
						
	}

	var map = new google.maps.Map(document.getElementById('map'), mapOptions);  
	var marker = new google.maps.Marker({
	position: myLatlng,
	map: map,
	title: markerTitle
	}); 
	var contentString =
	  '<h4>황헤어</h4>' +
	  '<p>파마 잘 하는 집</p>';
	var infowindow = new google.maps.InfoWindow({
												content: contentString,
				});
          infowindow.open(map, marker);
}


$(document).ready(function(){
	$('#myModal').on('shown.bs.modal', function(){
		initialize();
	})
});
/* $('#myModal').on('shown.bs.modal', function () {
    google.maps.event.trigger(map, "resize");
    map.setCenter(center);
}); */
</script>
<script>


   function deleteAll(f) {
     for (var i=0; i<f.length; i++) {
       f.options[i] = null;
     }
     f.length = 0;
   }

   function changeRegion(selform) {
     var regionArray = Array();
     var regionNone = Array ( "시군구선택" );
     var regionSeoul = Array( "시군구선택", "강남구",  "강동구",  "강북구",
         "강서구",  "관악구",  "광진구",  "구로구",  "금천구",
         "노원구",  "도봉구",  "동대문구",  "동작구",  "마포구",
         "서대문구",  "서초구",  "성동구",  "성북구",  "송파구",
         "양천구",  "영등포구",  "용산구",  "은평구",  "종로구",
         "중구",   "중랑구");
     var regionIncheon = Array ( "시군구선택", "계양구",  "남구",   "남동구",
         "동구",   "부평구",  "서구",   "연수구",  "중구",
         "강화군",  "옹진군");
     var regionDaejeon = Array ( "시군구선택", "대덕구",  "동구",   "서구",
         "유성구",  "중구");
     var regionGwangju = Array ( "시군구선택", "광산구",  "남구",   "동구", 
         "북구",   "서구");
     var regionDaegu = Array ( "시군구선택", "남구",   "달서구",  "동구",
         "북구",   "서구",   "수성구",  "중구",   "달성군");
     var regionUlsan = Array ( "시군구선택", "남구",   "동구",   "북구",
         "중구",   "울주군");
     var regionBusan = Array ( "시군구선택", "강서구",  "금정구",  "남구",
         "동구",   "동래구",  "부산진구",  "북구",   "사상구",
         "사하구",  "서구",   "수영구",  "연제구",  "영도구",
         "중구",   "해운대구",  "기장군");
     var regionGyeonggi = Array ("시군구선택", "고양시",  "과천시",  "광명시",
         "광주시",  "구리시",  "군포시",  "김포시",  "남양주시",
         "동두천시",  "부천시",  "성남시",  "수원시",  "시흥시",
         "안산시",  "안성시",  "안양시",  "양주시",  "오산시",
         "용인시",  "의왕시",  "의정부시",  "이천시",  "파주시",
         "평택시",  "포천시",  "하남시",  "화성시",  "가평군",
         "양평군",  "여주군",  "연천군");
     var regionGangwon = Array ( "시군구선택", "강릉시",  "동해시",  "삼척시",
         "속초시",  "원주시",  "춘천시",  "태백시",  "고성군",
         "양구군",  "양양군",  "영월군",  "인제군",  "정선군",
         "철원군",  "평창군",  "홍천군",  "화천군",  "횡성군");
     var regionChungbuk = Array ("시군구선택", "제천시",  "청주시",  "충주시",
         "괴산군",  "단양군",  "보은군",  "영동군",  "옥천군",
         "음성군",  "증평군",  "진천군",  "청원군");
     var regionChungnam = Array ("시군구선택", "계룡시",  "공주시",  "논산시",
         "보령시",  "서산시",  "아산시",  "천안시",  "금산군",
         "당진군",  "부여군",  "서천군",  "연기군",  "예산군",
         "청양군",  "태안군",  "홍성군");
     var regionJeonbuk = Array ( "시군구선택", "군산시",  "김제시",  "남원시",
         "익산시",  "전주시",  "정읍시",  "고창군",  "무주군",
         "부안군",  "순창군",  "완주군",  "임실군",  "장수군",  "진안군");
     var regionJeonnam = Array ( "시군구선택", "광양시",  "나주시",  "목포시",
         "순천시",  "여수시",  "강진군",  "고흥군",  "곡성군",
         "구례군",  "담양군",  "무안군",  "보성군",  "신안군",
         "영광군",  "영암군",  "완도군",  "장성군",  "장흥군",
         "진도군",  "함평군",  "해남군",  "화순군");
     var regionGyeongbuk = Array ("시군구선택", "경산시",  "경주시",  "구미시",
         "김천시",  "문경시",  "상주시",  "안동시",  "영주시",
         "영천시",  "포항시",  "고령군",  "군위군",  "봉화군",
         "성주군",  "영덕군",  "영양군",  "예천군",  "울릉군",
         "울진군",  "의성군",  "청도군",  "청송군",  "칠곡군");
     var regionGyeongnam = Array ("시군구선택", "거제시",  "김해시",  "마산시",
         "밀양시",  "사천시",  "양산시",  "진주시",  "진해시",
         "창원시",  "통영시",  "거창군",  "고성군",  "남해군",
         "산청군",  "의령군",  "창녕군",  "하동군",  "함안군",
         "함양군",  "합천군");
     var regionJeju = Array ( "시군선택",  "서귀포시",  "제주시",  "남제주군",  "북제주군");

     regionArray[0] = regionNone;
     regionArray[1] = regionSeoul;
     regionArray[2] = regionIncheon;
     regionArray[3] = regionDaejeon;
     regionArray[4] = regionGwangju;
     regionArray[5] = regionDaegu;
     regionArray[6] = regionUlsan;
     regionArray[7] = regionBusan;
     regionArray[8] = regionGyeonggi;
     regionArray[9] = regionGangwon;
     regionArray[10] = regionChungbuk;
     regionArray[11] = regionChungnam;
     regionArray[12] = regionJeonbuk;
     regionArray[13] = regionJeonnam;
     regionArray[14] = regionGyeongbuk;
     regionArray[15] = regionGyeongnam;
     regionArray[16] = regionJeju;

     deleteAll(selform.wr_gugun); // 지금 있는 목록 삭제하기.
     
     sidoindex = selform.wr_sido.selectedIndex;
     gugunlen = regionArray[sidoindex].length;
     cur_sido = selform.wr_sido.options[selform.wr_sido.selectedIndex].value;

     selform.wr_gugun.length=gugunlen;

     for (i=0; i<gugunlen; i++) {
       selform.wr_gugun.options[i] = new Option(regionArray[sidoindex][i], regionArray[sidoindex][i]);
       if (cur_sido == swr_sido && swr_gugun == regionArray[sidoindex][i])
       selform.wr_gugun.options[i].selected = true;
     }
   }

   function initRegion() {
     var sido = Array ( "시도선택",  "서울특별시", "인천광역시", "대전광역시",
       "광주광역시", "대구광역시", "울산광역시", "부산광역시",
       "경기도",  "강원도",  "충청북도",  "충청남도",
       "전라북도",  "전라남도",  "경상북도",  "경상남도",  "제주도");
     sidolen = sido.length;
     document.fwrite.wr_sido.options.length = sidolen;
     for(var i=0; i<sidolen; i++) {
       document.fwrite.wr_sido.options[i] = new Option(sido[i], sido[i]);
       if (swr_sido == sido[i]) {
         document.fwrite.wr_sido.options[i].selected = true;
         document.fwrite.wr_sido.selectedIndex = i;
       }
     }
   }
   var swr_sido = "<?=$wr_sido?>"; // php 변수를 자바스크립트 변수로 저장 - 현재 선택된 시도.
   var swr_gugun = "<?=$wr_gugun?>"; // php 변수를 자바스크립트 변수로 저장 - 현재 선택된 시군구.
   initRegion();
   changeRegion(fwrite);
 </script>
 </section>

  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 