<%@page import="bangshop.shopping.ProductDAO"%>
<%@page import="bangshop.shopping.ProductDTO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memberId = "";
	try {
		memberId = (String) session.getAttribute("memberId");
		if (memberId == null || memberId.equals("")) {
			response.sendRedirect("../bangMain.jsp");
		} else {		
			ProductDAO productDao = ProductDAO.getInstance();
			List<ProductDTO> productList = productDao.getJjimProductSimple();
			
			ProductDTO product = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
.w3-lobster, #search {
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
		
	<div class="container mt-3" style="margin-top: 0 !important; margin-bottom: 20px; width: 1300px;">
		<nav class="navbar navbar-expand-sm justify-content-center"
			style="padding-top: 10px; padding-bottom: 0; margin-bottom: 10px; padding-left: 0;">
			<ul class="navbar-nav" style="width: 100%;">
				<li>
					<h5 style="text-align: left; margin-bottom: 15px; color: #221DB5;
						height: 38.25px; line-height: 38.25px; vertical-align: bottom;">
						<b>찜</b>
					</h5>
				</li>
				<li style="margin-left: 535px; margin-right: 10px;">
					<input class="form-control mr-sm-2" type="text" placeholder="검색할 상품명을 입력하세요." size="50" id="searchWhat"
						style="border-color: #6B66FF; box-shadow: 2px 2px #6B66FF;">
				</li>
				<li>
					<button class="btn btn-light" type="submit" id="search"
						style="color: white; background-color: #6B66FF; border-color: #6B66FF; font-size: 13pt;">
						Search
					</button>
				</li>
			</ul>
		</nav>
	
		<%
			String realFolder = "";
			String saveFolder = "/img";
			ServletContext context = getServletContext();
			realFolder = context.getRealPath(saveFolder);
			realFolder = "http://localhost:8889/BangShop/img";
	
			if (productList == null) {
		%>
		<h4 style="margin-bottom: 260px;">
			<i class='far fa-angry' style="margin-left: 10px; margin-right: 10px;"></i>
			등록된 상품이 없습니다.
		</h4>
			
		<%
			} else {
		%>
		<div class="form-inline" style="width: 1300px;">
			<%
				for (int i = 0; i < productList.size(); i++) {
					product = (ProductDTO) productList.get(i);
			%>
			<div class="card w3-hover-shadow"
				style="width: 250px; height: 250px; margin-right: 30px; margin-bottom: 30px;">
				<img class="card-img-top" src="<%=realFolder%>/<%=product.getImage()%>" alt="상품이미지 준비중"
					style="width:250px; height: 150px;">
				<div class="card-body">
					<h5 class="card-title"><b><%=product.getTitle()%></b></h5>
					<p class="card-text"><%=product.getPrice()%>원</p>
               		<a href="detailList.jsp?no=<%=product.getProNo()%>" class="stretched-link"></a>
            	</div>
            </div>
			<%
				} // end of for
			%>
		</div>
		<%
			} // end of if
		%>
	</div>

	<ul class="pagination justify-content-center" style="margin-bottom: 40px;">
		<li class="page-item">
			<a class="page-link" href="#">
				<i class="fas fa-angle-double-left" style="font-size:18px; color: #7D78FF;"></i>
			</a>
		</li>
		<li class="page-item active"><a class="page-link" href="#" style="color: white; background-color: #7D78FF; border-color: #7D78FF">1</a></li>
		<li class="page-item"><a class="page-link" href="#" style="color: #7D78FF;">2</a></li>
		<li class="page-item"><a class="page-link" href="#" style="color: #7D78FF;">3</a></li>
		<li class="page-item">
			<a class="page-link" href="#">
				<i class="fas fa-angle-double-right" style="font-size:18px; color: #7D78FF;"></i>
			</a>
		</li>
	</ul>
	
    <jsp:include page="../../module/bottom.jsp" flush="false" />
    
    <script>
		$(document).ready(function(){
			$("#search").on("click", function() {
				// value : searchWhat의 value 값 (입력한 값)
				var value = $("#searchWhat").val().toLowerCase();
				$("div.card").filter(function() {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});
		});
	</script>

</body>
</html>

<%
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
%>