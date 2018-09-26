<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style>
input.form-control-finer{
    width: 77%;
    height: 34px;
    padding: 3px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
}
input.btn.finger{
width:100px;
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

        <ul class="nav nav-tabs">
            <li role="presentation">
                <a href="fingermain.jsp?nav=join.jsp">일반회원</a>
            </li>
            <li role="presentation" class="active">
                <a href="fingermain.jsp?nav=join_g.jsp">기업회원</a>
            </li>
        </ul>
        <form
            method="post"
            class="form-horizontal"
            action="insertTestProg.jsp"
            name="userinput"
            onsubmit="return GcheckIt()">

            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="col-md-12">

                <div align="center">
                    <h1>기업회원 가입</h1>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="cid">아이디</label>
                    <div class="col-sm-6">
                        <input
                         class="form-control-finer"
                        class="form-control"
                            name="cid"
                            type="text"
                            placeholder=" 아이디"
                            required="required">
                        <input
                        class="btn btn finger"
                            name="gconfirm_id"
                            value="ID중복확인"
                            onclick="openGconfirmId(this.form)" name="idDuplication"><br/>

                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="cpasswd">비밀번호</label>
                    <div class="col-sm-6">
                        <input
                            class="form-control"
                            name="cpasswd"
                            type="password"
                            placeholder="비밀번호"
                            required="required">
                        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="passwordCheck">비밀번호 확인</label>
                    <div class="col-sm-6">
                        <input
                            class="form-control"
                            name="passwordCheck"
                            type="password"
                            placeholder="비밀번호 확인"
                            required="required">
                        <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="cemail">이메일</label>
                    <div class="col-sm-6">
                        <input
                            class="form-control"
                            name="cemail"
                            type="email"
                            placeholder="이메일"
                            required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="cname">사업자 이름</label>
                    <div class="col-sm-6">
                        <input
                            class="form-control"
                            name="cname"
                            type="text"
                            placeholder="사업자 이름"
                            required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="cnum">사업자등록번호</label>
                    <div class="col-sm-6">
                        <input
                            type="tel"
                            class="form-control"
                            name="cnum"
                            placeholder="사업자번호를 등록해주세요"
                            required="required"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="agree" class="col-sm-3 control-label">약관 동의</label>
                    <div class="col-sm-6 checkbox checkbox-inline">
                         <input type="checkbox" id="inlineCheckbox1">
                        <label for="inlineCheckbox1"> 이용약관에 동의합니다. </label>
                    </div>
                </div>
                <div class="form-group">
                    <div align="center">
                        <textarea style="overflow-x:hidden; overflow-y:auto;" rows="10" cols="55">가.수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의
개인정보를 필수항목으로 수집하고 있습니다. 회원가입 - 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중
 선택), 가입인증정보 만14세 미만 아동 회원가입 - 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰
번호 중 선택), 가입인증정보 단체아이디 회원가입 - 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자
아이디, 관리자 연락처, 관리자 부서/직위 - 선택항목 : 대표 홈페이지, 대표 팩스번호 둘째, 서비스 이용과정이나 사업처리 과정에서 아래와
같은 정보들이 자동으로 생성되어 수집될 수 있습니다. - IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록 셋째,
 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이
 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. 넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이
 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다. - 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI),
휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보 다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수
                            있습니다. - 신용카드 결제시 : 카드사명, 카드번호 등 - 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등 - 계좌이체시 :
                            은행명, 계좌번호 등 - 상품권 이용시 : 상품권 번호 나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다. - 홈페이지,
                            서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청 - 협력회사로부터의 제공 - 생성정보 수집 툴을 통한 수집
                        </textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit" onclick="move()">회원가입<i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i>
                        </button>
                    </div>
                </div>

                <hr>
            </div>
        </form>
    </section>

    <script type="text/javascript">
    function move(){
    	if(confirm("회원가입이 되었습니다."))
    		{location.href="fingermainFirst.jsp";}
    	
    }
    
        function GcheckIt() {

            var userinput = document.userinput;

            if (!userinput.cid.value) {

                alert("ID를 입력하세요");

                userinput.cid.focus();

                return false;
            }

            if (!userinput.cpasswd.value) {

                alert("비밀번호를 입력하세요");

                userinput .cpasswd.focus();

                return false;
            }

            if (userinput.cpasswd.value != userinput.passwordCheck.value) {

                alert("비밀번호를 동일하게 입력하세요");

                userinput .passwordCheck.focus();

                return false;

            }

            if (!userinput.cemail.value) {

                alert("이메일을 입력하세요");

                userinput.cemail .focus();

                return false;

            }

            if (!userinput.cname.value) {

                alert("사업자 이름을 입력하세요");

                userinput .cname .focus();

                return false;

            }

            if (!userinput.cnum.value) {

                alert("사업자번호를 입력하세요");

                userinput.cnum.focus();

                return false;

            }

            return true;

        }

        //아이디 중복 여부를 판단

        function openGconfirmId(userinput) {

            //아이디를 입력했는지 검사

            if (userinput.cid.value == "") {
                alert("아이디를입력하세요");

                userinput .cid.focus();

                return;

            }

            //url과 사용자 입력 id를 조합합니다.

            url = "GconfirmId.jsp?cid=" + userinput.cid.value;

            //새로운 윈도우를 엽니다.

            open(
                url,
                "GconfirmId.jsp",
                "toolbar=no,location=no,status=no,menubar=no,scrllbar=no,resizable=no,width=300" +
                        ",height=100"
            );

        }
    </script>
   