<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
input.form-control-finger{
	text-align:center;
    display: block;
    width: 60%;
    height: 34px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

</style>
<section class="hoc container clear">
     <article>
        <div class="header__text-group text-center">
        <h1><i class="fa fa-handshake-o" aria-hidden="true"></i>&nbsp;company</h1>
     
    
      </div> <!-- close .text-group -->
  <br>
		<div align="center" class="header__text-group">
			<ul id="top-bar" class="nav nav-tabs nav-justified">
        		<li role="presentation"><a href="fingermain.jsp?nav=cookieLoginForm.jsp">개인</a></li>
        		<li role="presentation" class="active"><a href="fingermain.jsp?nav=cookieloginFormg.jsp">기업</a></li>
			</ul>
			
			<div align="center" class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
				<div id="login-access" class="tab-pane fade active in">
				<br><br>
				<form class="form-horizontal" method="post" action="cookieLoginProg.jsp">   	
					
						<br>
					
						<div class="form-group">
							
						<input type="text" class="form-control-finger" name="cid" placeholder="id"><p></p>
						</div>
						<div class="form-group ">
						
							 <input type="password" class="form-control-finger" name="cpasswd"  placeholder="password"><br>   
						</div>				
								<div class="form-group">
									
							 <button class="btn btn-lg" type="submit" onclick="location.href='fingermainFirst.jsp'">Login</button>   
							
						</div>
					</form>			
			</div>
			</div>
		</div>
	</article>
</section>
