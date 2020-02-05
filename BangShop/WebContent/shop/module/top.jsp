<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
.w3-lobster, .ll {
	font-family: "Lobster", serif;
	text-align: center;
}
#logo.link {
	text-decoration: none;
	text-shadow: 0 0 24px;
}
</style>
<title>top.jsp</title>
</head>

<body>
	
	<div class="jumbotron jumbotron-fluid"
		style="background-color: white; margin-bottom: 20px; padding-top: 50px; padding-bottom: 0;">
	
		<div class="w3-container w3-lobster">
			<a class="w3-xxxlarge" href="<%=request.getContextPath()%>/shop/shopping/bangMain.jsp"
				id="logo" style="color: #3F0099;">
				BangShop
			</a>
		</div>
		
		<%
			if (session.getAttribute("memberId") == null) {
		%>
		<ul class="nav justify-content-end" style="padding-right: 400px;">
			<li class="nav-item w3-xlarge ll">
				<a class="nav-link" href="#" data-toggle="modal" data-target="#myModal" style="color: #4641D9;">
					Login
				</a>
			</li>
			<li class="nav-item w3-xlarge ll">
				<a class="nav-link" href="<%=request.getContextPath()%>/shop/shopping/member/memberJoinForm.jsp"
					style="color: #4641D9;">
					Join
				</a>
			</li>
		</ul>
			
		<!-- The Modal -->
  		<div class="modal fade" id="myModal">
    		<div class="modal-dialog modal-dialog-centered">
      			<div class="modal-content">
      
        			<!-- Modal Header -->
        			<div class="modal-header">
          				<h4 class="modal-title w3-xlarge ll" style="color: #050099;">
          					<i class="fab fa-expeditedssl" style="font-size:30px; color: #4641D9;"></i>
          					&nbsp;Login
          				</h4>
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
        			</div>
        
        			<!-- Modal body -->
        			<div class="modal-body" style="margin-top: 10px; margin-bottom: 25px;">
          				<center>
							<form action="<%=request.getContextPath()%>/shop/shopping/member/memberLoginPro.jsp" method="post">
								<div class="form-group" style="width: 400px">
									<label for="usr" style="float: left"><b>아이디</b></label>
									<input type="text" class="form-control" id="usr" name="id">
								</div>
								<div class="form-group" style="width: 400px">
									<label for="pwd" style="float: left"><b>비밀번호</b></label>
									<input type="password" class="form-control" id="pwd" name="pass">
								</div>
								<button type="submit" class="btn text-white w3-large ll"
									style="background-color: #4641D9; border-style: none; margin-top: 20px; width: 400px;">
									Submit
								</button>
							</form>
						</center>
        			</div>
		        </div>
			</div>
      	</div>
		
		<% 
			} else {
		%>
		<ul class="nav justify-content-end" style="padding-right: 400px;">
			<li class="nav-item w3-xlarge ll">
				<a class="nav-link" href="<%=request.getContextPath()%>/shop/shopping/product/registerForm.jsp"
					style="color: #4641D9;">
					Product
				</a>
			</li>
			<li class="nav-item w3-xlarge ll">
				<a class="nav-link" href="<%=request.getContextPath()%>/shop/shopping/store/storeList.jsp"
					style="color: #4641D9;">
					My Store
				</a>
			</li>
			<li class="nav-item w3-xlarge ll">
				<a class="nav-link" href="<%=request.getContextPath()%>/shop/shopping/store/jjimList.jsp"
					style="color: #FF0000;">
					<i class="fas fa-heart" style="height: 36px; line-height: 36px; vertical-align: middle;"></i>
				</a>
			</li>
			<li class="nav-item w3-xlarge ll">
				<a class="nav-link" href="<%=request.getContextPath()%>/shop/shopping/member/memberLogout.jsp"
					style="color: #4641D9;">
					Logout
				</a>
			</li>
		</ul>
		<%
			}
		%>
	</div>

</body>
</html>