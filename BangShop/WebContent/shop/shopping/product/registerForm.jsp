<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memberId = "";
	try {
		memberId = (String) session.getAttribute("memberId");
		if (memberId == null || memberId.equals("")) {
			response.sendRedirect("../bangMain.jsp");
		} else {
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>물픔 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
.w3-lobster {
	font-family: "Lobster", serif;
	text-align: center;
}
#logo.link {
	text-decoration: none;
	text-shadow: 0 0 24px;
}
</style>
</head>

<body>

	<jsp:include page="../../module/top.jsp"></jsp:include>
	
    <form action="registerPro.jsp" method="post" style="text-align: center; margin-bottom: 30px;" enctype="multipart/form-data">
    
        <div class="container mt-3" style="margin-top: 0 !important;">
            <h5 style="text-align: left; margin-bottom: 15px; color: #221DB5;"><b>상품 등록</b></h5>
            <div class="form-group" style="margin-bottom: 10px;">
                <div class="input-group-prepend" style="height: 38px; text-align: left;">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	상품사진
                    </span>
                    <div class="custom-file mb-3">
                        <input type="file" class="custom-file-input" id="customFile" name="image">
                        <label class="custom-file-label" for="customFile" style="border-color: #6B66FF;">-- 파일을 선택하세요 --</label>
                    </div>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <div class="input-group-prepend">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	카테고리
                    </span>
                    <select name="category" class="custom-select" style="border-color: #6B66FF; text-align: center;">
                        <option selected>-- 카테고리를 선택하세요 --</option>
                        <option value="여성의류">여성의류</option>
                        <option value="남성의류">남성의류</option>
                        <option value="패션잡화">패션잡화</option>
                        <option value="유아동/출산">유아동/출산</option>
                        <option value="스포츠/레저">스포츠/레저</option>
                        <option value="디지털/가전">디지털/가전</option>
                        <option value="도서/티켓">도서/티켓</option>
                        <option value="생활/가구">생활/가구</option>
                        <option value="스타굿즈">스타굿즈</option>
                        <option value="차량">차량</option>
                        <option value="기타">기타</option>
                    </select>
                </div>
            </div>
            <div class="btn-group" style="width: 1110px; height: 38px;" style="margin-bottom: 10px;">
                <div class="input-group-prepend" style="height: 38px; width: 60%;">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                        	거래지역
                        </span>
                    </div>
                    <input type="text" name="place" id="place" class="form-control" placeholder="거래 선호 지역"
                    	style="border-color: #6B66FF;">
                </div>
                <div class="btn-group" style="height: 36px; width: 40%;">
                    <button type="button" class="btn text-light" style="background-color: #6B66FF;">지하철검색</button>
                    <button type="button" class="btn btn-light" style="color: #6B66FF; border-color: #6B66FF;">지역검색</button>
                    <button type="button" class="btn text-light dropdown-toggle" data-toggle="dropdown" 
                    	style="background-color: #6B66FF;">최근지역</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" onclick="recent1()">인천광역시 연수구 연수동</a>
                        <a class="dropdown-item" onclick="recent2()">경기도 안양시 동안구 평촌동</a>
                        <a class="dropdown-item" onclick="recent3()">시흥시 거모동</a>
                        <a class="dropdown-item" onclick="recent4()">경기도 과천시 과천동</a>
                        <a class="dropdown-item" onclick="recent5()">경기도 군포시 광정동</a>
                        <a class="dropdown-item" onclick="recent6()">경기도 광명시 가학동</a>
                        <a class="dropdown-item" onclick="recent7()">서울특별시 강남구 개포동</a>
                    </div>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 10px; margin-top: 10px;">
                <div class="input-group-prepend">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	상품상태
                    </span>
                    <select name="proStatus" class="custom-select" style="border-color: #6B66FF;">
                        <option selected style="text-align: center;">-- 상태를 선택하세요 --</option>
                        <option value="새물품(미사용)">새물품(미사용)</option>
                        <option value="중고">중고</option>
                        <option value="중고/하자(하자가 있는 중고)">중고/하자(하자가 있는 중고)</option>
                        <option value="새물품/하자(하자가 있는 새물품)">새물품/하자(하자가 있는 새물품)</option>
                    </select>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <div class="input-group-prepend">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	판매제목
                    </span>
                    <input type="text" class="form-control" name="title" placeholder="제목 (최대40자)" style="border-color: #6B66FF;">
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <div class="input-group-prepend">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	상품가격
                    </span>
                    <input type="text" class="form-control" name="price" placeholder="10000 (가격은 숫자만 입력)"
                    	style="border-color: #6B66FF;">
                </div>
            </div>
            <div class="form-group" style="margin-bottom: -7px;">
            	<div class="form-check-inline">
            		<div class="custom-control custom-checkbox mb-3">
            			<label class="form-check-label">
            				<input type="checkbox" class="custom-control-input" id="deliPay" name="deliPay" value="택배비포함">
            				<label class="custom-control-label" for="deliPay">택배비포함</label>
            			</label>
            		</div>
            		<div class="custom-control custom-checkbox mb-3" style="margin-left: 20px;">
            			<label class="form-check-label">
            				<input type="checkbox" class="custom-control-input" id="changeOk" name="changeOk" value="교환가능">
            				<label class="custom-control-label" for="changeOk">교환가능</label>
            			</label>
            		</div>
            	</div>
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <div class="input-group-prepend" style="width: 1111px;">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	상품수량
                    </span>
                    <input type="text" name="proCount" class="form-control" placeholder="1" style="border-color: #6B66FF;">
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <div class="input-group-prepend">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	상품설명
                    </span>
                    <textarea class="form-control" rows="5" id="comment" name="proComment" placeholder="상품설명은 2000자까지 가능합니다."
                    	 style="border-color: #6B66FF;"></textarea>
                </div>
                <div>
                    <span style="float: right">/2000</span>
                    <span id="count" style="color: rgb(0,0,0); float:right;">0</span>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 20px;">
                <div class="input-group-prepend" style="width: 1111px;">
                    <span class="input-group-text text-light" style="margin-right: 10px; border: none; background-color: #6B66FF;">
                    	연관테그</span>
                    <input type="text" class="form-control" name="tag" placeholder="선택사항 예:(#아이폰 #케이스 #에어팟 #아이패드)"
                    	style="border-color: #6B66FF;">
                </div>
            </div>
            <div class="pay-guide-wrapper" style="margin-bottom: 17px;">
                <div style="margin-bottom: 5px;">
                    <a class="pay-guide-link" href="#" data-toggle="modal" data-target="#myModal" style="color: #221DB5;">
                    	<b><b>이용가이드 (클릭) &gt;&gt;</b></b>
                    </a>
                </div>
                <div class="pay-guide-desc">
                	상품등록시 <sapn style="color: #FF1212"><b>안전결제 서비스(방페이)</b></sapn>가 자동으로 적용됩니다. 거래완료시 등록된 계좌로 입금됩니다.<br>
                	계좌확인 : 구매/판매내역 > 방페이 > 정산
                </div>
                
                <!-- The Modal -->
		  		<div class="modal fade" id="myModal">
		    		<div class="modal-dialog modal-dialog-centered">
		      			<div class="modal-content">
		      
		        			<!-- Modal Header -->
		        			<div class="modal-header">
		          				<h4 class="modal-title" style="color: #003399;">
		          					<i class="fab fa-amazon-pay" style="font-size:30px; color: #5587ED;"></i>&nbsp;BangPay
		          				</h4>
		          				<button type="button" class="close" data-dismiss="modal">&times;</button>
		        			</div>
		        
		        			<!-- Modal body -->
		        			<div class="modal-body" style="margin-top: 20px; margin-bottom: 20px;">
		          				<center>
		          					<div class="form-group" style="width: 400px">
										<div>
	                           				<h5 style="color: #003399"><b>바로바로 결제하세요</b></h5>
	                           				거래할 때마다 계좌번호, 주소 주고받을 필요 없어요.<br>
	                           				BangShopTalk으로 대화하고 바로 결제하세요!
	                        			</div><br>
	                        			<div>
	                        				<h5 style="color: #003399"><b>안심하고 지금 이용하세요</b></h5>
											사기 걱정 없는 안심 구매 네고 없는 빠른 판매<br>
								                          번거로운 가입 절차 없이 지금 이용할 수 있습니다.
				                        </div><br>
	                        			<label style="color: #003399"><b>계좌번호</b></label><br>
	                        			<div>
	                           				우리은행 3333-33-3333333<br>
	                           				국민은행 282202-11-11111<br>
	                          				 농협은행 302-1895-594-78
	                        			</div><br>
	                        			<label style="color: #003399"><b>예금주 : 방샵</b></label>
	                        		</div>
								</center>
		        			</div>
				        </div>
					</div>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <button type="submit" class="btn" style="border-color: #221DB5; background-color: #221DB5; color: white;">
                	물품등록
                </button>
            </div>
        </div>

        <script>
	        $(".custom-file-input").on("change", function() {
	            var fileName = $(this).val().split("\\").pop();
	            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	        });
        
            $('#comment').on('input', function() {
            	// 공백 포함 글자수
            	$('#count').text($('#comment').val().length);
            });
            
            function recent1() {
            	document.getElementById("place").value = "인천광역시 연수구 연수동";
            };
            function recent2() {
            	document.getElementById("place").value = "경기도 안양시 동안구 평촌동";
            };
            function recent3() {
            	document.getElementById("place").value = "시흥시 거모동";
            };
            function recent4() {
            	document.getElementById("place").value = "경기도 과천시 과천동";
            };
            function recent5() {
            	document.getElementById("place").value = "경기도 군포시 광정동";
            };
            function recent6() {
            	document.getElementById("place").value = "경기도 광명시 가학동";
            };
            function recent7() {
            	document.getElementById("place").value = "서울특별시 강남구 개포동";
            };
        </script>
    </form>
    
    <jsp:include page="../../module/bottom.jsp" flush="false" />
    
</body>

</html>

<%
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
%>