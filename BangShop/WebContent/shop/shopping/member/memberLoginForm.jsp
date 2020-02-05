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
    <style>
        html,
        body {
            margin: 0 auto;
        }

        form {
            margin-top: 100px;
        }

        button {
            margin-top: 50px;
        }

    </style>
    <title>로그인</title>
</head>

<body>

    <jsp:include page="../../module/top.jsp" flush="false" />

    <center>
        <form action="memberLoginPro.jsp" method="post">
            <div class="form-group" style="width: 500px">
                <label for="usr" style="float: left">아이디</label>
                <input type="text" class="form-control" id="usr" name="id">
            </div>
            <div class="form-group" style="width: 500px">
                <label for="pwd" style="float: left">비밀번호</label>
                <input type="password" class="form-control" id="pwd" name="pass">
            </div>
            <button type="submit" class="btn btn-primary">로그인</button>
        </form>
    </center>

</body>

</html>
