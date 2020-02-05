<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>bottom.jsp</title>
    <style>
        span {
           font-weight: 100px;
           font-size: 20px;
        }
    </style>
</head>

<body>

    <table class="table" style="padding-bottom: 0; margin-bottom: 0;">
        <thead>
            <tr>
                <td width="50px;"></td>
                <td>
                    <a href="<%=request.getContextPath()%>/shop/shopping/agree/agreement.jsp" style="font-size: 16pt; color: #3F0099;"
                    	target="_blank">
                    	이용약관
                    </a>&nbsp;&nbsp;&nbsp;
                    <a href="<%=request.getContextPath()%>/shop/shopping/agree/personal.jsp" style="font-size: 16pt; color: #3F0099;"
                    	target="_blank">
                    	<b>개인정보처리방침</b>
                    </a>
                </td>
            </tr>
        </thead>
    </table>
    <table class="table" style="padding-top: 0">
        <thead>
            <tr>
                <th width="50px;"></th>
                <th width="600px;"><span>고객센터</span></th>
                <th width="600px;"><span>무통장 계좌안내</span></th>
                <th><span>BangShop</span></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td></td>
                <td> 02-6255-8073<br>
                    업무시간 10:00 ~ 17:00<br>
                    토/일요일/공휴일 휴무</td>
                <td>
                    카카오뱅크 3333-33-3333333 방샵<br>
                    국민은행 282202-11-111111 방샵<br>
                    농협은행 302-1895-5984-78 방샵</td>
                <td>대표자 : 방기승<br>
                    부사장 : 김정은<br>
                    이메일 : BangShop@naver.com<br>
                    사업자 주소 : [11111] 서울 강남구 테헤란로 123</td>
            </tr>
        </tbody>
    </table>
    <hr>
</body>

</html>