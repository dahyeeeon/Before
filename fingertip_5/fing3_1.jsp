<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
 <%

  String content = request.getParameter("nav");

  if(content==null){

    content="fing3login.jsp";
  }

  content=content;

%>     

<style>
.fade-carousel {
    position: relative;
    height: 700px;
}
.fade-carousel .carousel-inner .item {
    height: 700px;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .7;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
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
/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 700px;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url("images/01.jpg"); 
}
.fade-carousel .slides .slide-2 {
  background-image: url("images/02.jpg");
}
.fade-carousel .slides .slide-3 {
  background-image: url("images/img2.jpg");
}

</style>
 
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>FINGERTIP</h1>        
            <h3>We are creative</h3>
        </hgroup>
        <button type="button" class="btn btn-hero btn-lg" data-toggle="modal" data-target="#myModal">예약하기</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>FINGERTIP</h1>        
            <h3>We are smart</h3>
        </hgroup>       
        <button type="button" class="btn btn-hero btn-lg" data-toggle="modal" data-target="#myModal">예약하기</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>FINGERTIP</h1>        
            <h3>We are amazing</h3>
        </hgroup>
        <button type="button" class="btn btn-hero btn-lg" data-toggle="modal" data-target="#myModal">예약하기</button>
      </div>
    </div>
  </div> 
</div>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
<br><br>
      <div class="modal-body" align="center">
        <h3>회원만 이용 가능합니다.</h3>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn" onClick="location.href='fingermain.jsp?nav=cookieLoginForm.jsp'">로그인</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>