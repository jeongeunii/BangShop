<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="../js/jquery-3.4.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
    <style>
        html,
        body {
            margin: 0 auto;
        }

        form {
            margin-top: 30px;
        }

        button {
            margin-top: 20px;
        }
		.w3-lobster, .ll {
			font-family: "Lobster", serif;
			text-align: center;
		}
    </style>
    <title>회원가입</title>
</head>

<body>

    <jsp:include page="../../module/top.jsp" flush="false" />

    <center>
        <form action="memberJoinPro.jsp" class="needs-validation" method="post"
        	style="margin-bottom: 30px; margin-top: 0;" novalidate>
        	<div style="text-align: center; margin-left: 970px;">
        		<span class="badge badge-danger">*항목 필수 입력!</span>
        	</div>
            <div class="form-group" style="width: 500px">
                <label for="usr" style="float: left">* 이름</label>
                <input type="text" class="form-control" id="usr" name="name" required>
                <div class="valid-feedback">정상 입력!</div>
                <div class="invalid-feedback">이름은 필수 입력 항목입니다!</div>
            </div>
            <div class="form-group" style="width: 500px">
                <label for="id" style="float: left">* 아이디</label>
                <input type="text" class="form-control" id="id" name="id" required>
                <div class="valid-feedback">정상 입력!</div>
                <div class="invalid-feedback">아이디는 필수 입력 항목입니다!</div>
            </div>
            <div class="form-group" style="width: 500px">
                <label for="pwd" style="float: left">* 비밀번호</label>
                <input type="password" class="form-control" id="pwd" name="pass" required>
                <div class="valid-feedback">정상 입력!</div>
                <div class="invalid-feedback">비밀번호는 필수 입력 항목입니다!</div>
            </div>
            <div class="form-group" style="width: 500px">
                <label for="email" style="float: left">이메일</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="ex) aaa @ naver.com">
            </div>
            <div class="form-group" style="width: 500px">
                <label for="adr" style="float: left">* 주소</label>
                <input type="text" class="form-control" id=" adr" name="addr" required>
                <div class="valid-feedback">정상 입력!</div>
                <div class="invalid-feedback">주소는 필수 입력 항목입니다!</div>
            </div>
            <div class="form-group" style="width: 500px">
                <label for="phone" style="float: left">* 휴대전화</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="ex) 000 - 0000 - 0000" required>
                <div class="valid-feedback">정상 입력!</div>
                <div class="invalid-feedback">휴대전화는 필수 입력 항목입니다!</div>
            </div>
            <div class="form-group" style="width: 500px; margin-bottom: 30px;">
                <label for=bd style="float: left">생일</label>
                <input type="text" class="form-control" id="bd" name="birth" placeholder="ex) 940419">
            </div>
            <div class="form-group" style="width: 500px;">
	            <button type="submit" class="btn text-white w3-large ll" style="background-color: #4641D9; border-style: none; width: 100%;">Submit</button>
            </div>
        </form>
    </center>
    
    <jsp:include page="../../module/bottom.jsp" />

    <script type="text/javascript">
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();

    </script>

</body>

</html>
