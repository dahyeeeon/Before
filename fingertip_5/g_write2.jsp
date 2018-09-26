<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <style>
    .form-horizontal .form-group{margin:20px 0 !important}
    .form-group2{display:table;width:100%}
    .form-group2 > label{display:table-cell;width:100px}
    .form-group2 > input{display:table-cell;}
    </style>
<section class="hoc container clear">
            <h2 class="content-section text-center">STYLE</h2>
            <div class="row">
                <div class="col-md-7 col-md-offset-2">
                    <form class="form-horizontal">
                        <div class="form-group form-group2">
                            <label for="name">매장명</label>
                            <input
                                type="text"
                                class="form-control"
                                id="name"
                                placeholder="매장명"
                                required="required">
                        </div>
                        <div class="form-group form-group2">
                            <label for="name">스타일선택</label>

                            <table class="type03">
                                <tr>
                                    <th scope="row">길이</th>
                                    <td>
                                        <div class="checkbox checkbox-warning" align="center">
                                            <input id="checkbox3" type="checkbox">
                                            <label for="checkbox3">롱
                                            </label>
                                            <input id="checkbox4" type="checkbox">
                                            <label for="checkbox4">미디엄
                                            </label>
                                            <input id="checkbox5" type="checkbox">
                                            <label for="checkbox5">숏
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">스타일</th>
                                    <td>
                                        <div class="checkbox checkbox-warning" align="center">
                                            <input id="checkbox6" type="checkbox">
                                            <label for="checkbox6">커트
                                            </label>
                                            <input id="checkbox7" type="checkbox">
                                            <label for="checkbox7">펌
                                            </label>
                                            <input id="checkbox8" type="checkbox">
                                            <label for="checkbox8">염색
                                            </label>
                                            <label for="checkbox8">매직
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group form-group2">
                            <label for="file">첨부파일</label>
                            <input type="file" class="multi" id="file" multiple="multiple" maxlength="4"/>
                         
                        </div>

                        <div class="form-group form-group2 ">
                            <label for="exampleInputText">시술 내용</label>
                            <textarea
                                class="form-control"
                                rows="10"
                                cols="25"
                                placeholder="시술내용 입력해주세요"
                                required="required"></textarea>
                        </div>
                        
                    </form>
                </div>
            </div>
            <div class="content-section text-center">
                        <button type="submit" class="btn btn-default">등록</button>
                        </div>
  	
</section>
    