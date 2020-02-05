<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="../js/jquery-3.4.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
div.jumbotron {
	background-color: white;
	margin-bottom: 0;
	height: 20px;
}
h1 {
	font-style: italic;
	text-align: center;
}
#logo.link {
	text-decoration: none;
	text-shadow: 0 0 24px;
}
.carousel-inner img {
	width: 100%;
	height: 100%;
}
#demo {
	margin-top: 20px;
}
a.dropdown-item, #searchWhat {
	color: #003399;
}
</style>
<title>topMain.jsp</title>
</head>
<body>

	<div class="container" style="margin-bottom: 30px;">
	
		<%
			if (session.getAttribute("memberId") == null) {
		%>
		<div class="jumbotron jumbotron-fluid">
			<h1>
				<a href="<%=request.getContextPath()%>/shop/shopping/bangMain.jsp" id="logo" style="color: #003399; font-size: 33pt;">
					BangShop
				</a>
			</h1>
		<ul class="nav justify-content-end">
			<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#myModal"
				style="color: #5587ED; font-style: italic;"><b>로그인</b></a></li>
			<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/shop/shopping/member/memberJoinForm.jsp"
				style="color: #5587ED; font-style: italic;"><b>회원가입</b></a></li>
		</ul>
		
		
		<!-- The Modal -->
  		<div class="modal fade" id="myModal">
    		<div class="modal-dialog modal-dialog-centered">
      			<div class="modal-content">
      
        			<!-- Modal Header -->
        			<div class="modal-header">
          				<h4 class="modal-title" style="color: #003399;">
          					<i class="fab fa-expeditedssl" style="font-size:30px; color: #5587ED;"></i>&nbsp;로그인
          				</h4>
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
        			</div>
        
        			<!-- Modal body -->
        			<div class="modal-body" style="margin-top: 10px; margin-bottom: 20px;">
          				<center>
							<form action="<%=request.getContextPath()%>/shop/shopping/member/memberLoginPro.jsp" method="post">
								<div class="form-group" style="width: 400px">
									<label for="usr" style="float: left">아이디</label>
									<input type="text" class="form-control" id="usr" name="id">
								</div>
								<div class="form-group" style="width: 400px">
									<label for="pwd" style="float: left">비밀번호</label>
									<input type="password" class="form-control" id="pwd" name="pass">
								</div>
								<button type="submit" class="btn text-white" style="background-color: #5587ED; border-style: none;">
									로그인
								</button><br>
							</form>
						</center>
        			</div>
		        </div>
			</div>
      	</div>
      	<hr>
      	</div>
		
		<% 
			} else {
		%>
		<div class="jumbotron" style="margin-bottom: 30px;">
			<h1>
				<a href="<%=request.getContextPath()%>/shop/shopping/bangMain.jsp" id="logo" style="color: #003399; font-size: 33pt;">
					BangShop
				</a>
			</h1>
		</div>
		
		<nav class="navbar navbar-expand-sm justify-content-center"
			style="padding-top: 10px; padding-bottom: 10px; background-color: #6799FF;">
			<ul class="navbar-nav" style="width: 100%;">
				<li style="margin-left: 40px; margin-right: 10px;">
					<input class="form-control mr-sm-2" type="text" placeholder="찾을 물건을 입력하세요." size="50" id="searchWhat"
						style="font-style: italic; border-color: white;">
				</li>
				<li style="margin-right: 150px;">
					<button class="btn btn-light" type="submit" id="search"
						style="font-style: italic; color: #003399; background-color: white;">
						<b>Search</b>
					</button>
				</li>
				<li class="nav-item dropdown" style="margin-right: 10px; font-style: italic;">
					<a class="nav-link dropdown-toggle text-light" data-toggle="dropdown" href="#">카테고리 </a>
					<div class="dropdown-menu text-light">
						<a class="dropdown-item" href="#">여성의류</a>
	                    <a class="dropdown-item" href="#">남성의류</a>
	                    <a class="dropdown-item" href="#">패션잡화</a>
	                    <a class="dropdown-item" href="#">유아동/출산</a>
	                    <a class="dropdown-item" href="#">스포츠/레저</a>
	                    <a class="dropdown-item" href="#">디지털/가전</a>
	                    <a class="dropdown-item" href="#">도서/티켓</a>
	                    <a class="dropdown-item" href="#">생활/가구</a>
	                    <a class="dropdown-item" href="#">스타굿즈</a>
	                    <a class="dropdown-item" href="#">차량</a>
	                    <a class="dropdown-item" href="#">기타</a>
					</div>
				</li>
				<li class="nav-item" style="margin-right: 10px; font-style: italic;">
					<a class="nav-link text-light" href="<%=request.getContextPath()%>/shop/shopping/product/registerForm.jsp">판매하기</a>
				</li>
				<li class="nav-item" style="margin-right: 10px; font-style: italic;">
					<a class="nav-link text-light" href="<%=request.getContextPath()%>/shop/shopping/store/storeList.jsp">내 상점</a>
				</li>
				<li class="nav-item" style="font-style: italic;">
					<a class="nav-link text-light" href="<%=request.getContextPath()%>/shop/shopping/member/memberLogout.jsp">로그아웃</a>
				</li>
			</ul>
		</nav>
		
		<%
			}
		%>
		
		<div class="jumbotron jumbotron-fluid">
		<div id="demo" class="carousel slide" data-ride="carousel">

	        <!-- Indicators -->
	        <ul class="carousel-indicators">
	            <li data-target="#demo" data-slide-to="0" class="active"></li>
	            <li data-target="#demo" data-slide-to="1"></li>
	            <li data-target="#demo" data-slide-to="2"></li>
	        </ul>
	
	        <!-- The slideshow -->
	        <div class="carousel-inner">
	            <%
		            String realFolder = "";
		            String saveFolder = "/img";
		            ServletContext context = getServletContext();
		            realFolder = context.getRealPath(saveFolder);
		            realFolder = "http://localhost:8889/BangShop/img";
	        	 %>
	            <div class="carousel-item active">
	                <img src="<%=realFolder%>/shop1.PNG" alt="shop1" width="1100" height="500">
	            </div>
	            <div class="carousel-item">
	                <img src="<%=realFolder%>/shop2.PNG" alt="shop2" width="1100" height="500">
	            </div>
	            <div class="carousel-item">
                <img src="<%=realFolder%>/shop3.PNG" alt="shop3" width="1100" height="500">
            	</div>
        	</div>

	        <!-- Left and right controls -->
	        <a class="carousel-control-prev" href="#demo" data-slide="prev">
	        <span class="carousel-control-prev-icon"></span>
	        </a> 
	        <a class="carousel-control-next" href="#demo" data-slide="next">
	            <span class="carousel-control-next-icon"></span>
        	</a>
    	</div>
    </div>
    </div>
    
</body>
</html>