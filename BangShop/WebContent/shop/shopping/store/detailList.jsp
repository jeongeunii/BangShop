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
			int no = Integer.parseInt(request.getParameter("no"));
			ProductDTO product = productDao.getProductDetail(no);
			
			String realFolder = "";
			String saveFolder = "/img";
			ServletContext context = getServletContext();
			realFolder = context.getRealPath(saveFolder);
			realFolder = "http://localhost:8889/BangShop/img";
			
			String imageName = product.getImage();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 상점</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
.mySlides {
	display: none;
	width: 500px;
	height: 500px;
}
</style>
</head>

<body>

	<jsp:include page="../../module/top.jsp"></jsp:include>
		
	<div class="container mt-3" style="margin-top: 0 !important; margin-bottom: 50px; width: 1300px;">
		
		<div style="float: left; margin-right: 100px;">
			<div class="w3-content w3-display-container">
				<img class="mySlides" src="<%=realFolder%>/<%=imageName%>" alt="상품이미지 준비중">
				<img class="mySlides" src="<%=request.getContextPath()%>/img/logo.jpg">
				
				<button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)" style="background-color: #6B66FF;">
					&#10094;
				</button>
				<button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)" style="background-color: #6B66FF;">
					&#10095;
				</button>
			</div>
      
		</div>
		
		<div style="height: 500px;">
			<hr style="color: #6B66FF; border: 1px solid;">
			<div style="margin-left: 620px; margin-top: 20px; margin-bottom: 20px;">
				<h3 style="margin-bottom: 20px;"><%=product.getTitle() %></h3>
				<h1><%=product.getPrice() %>원</h1>
			</div>
			<hr style="color: #6B66FF; border: 1px solid;">
			<ul class="list-group list-group-flush" style="margin-right: 80px; margin-top: 40px; margin-bottom: 53px;">
				<li class="list-group-item"><span style="color: #6B66FF">카테고리</span>&nbsp;&nbsp;&nbsp;<span><%=product.getCategory() %></span></li>
				<li class="list-group-item"><span style="color: #6B66FF">상품상태</span>&nbsp;&nbsp;&nbsp;<span><%=product.getProStatus() %></span></li>
				<li class="list-group-item"><span style="color: #6B66FF">교환여부</span>&nbsp;&nbsp;&nbsp;<span><%=product.getChangeOk() %></span></li>
				<li class="list-group-item"><span style="color: #6B66FF">배송비</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><%=product.getDeliPay() %></span></li>
			</ul>
			<button class="w3-btn w3-border w3-xlarge w3-red" style="width: 200px; margin-right: 27px; font-color: white;">
				<a href="<%=request.getContextPath()%>/shop/shopping/store/jjimPro.jsp?no=<%=product.getProNo()%>">찜</a>
			</button>
			<button class="w3-btn w3-border w3-xlarge w3-deep-purple"  style="width: 200px;">구매하기</button>
		</div>
	
		<script>
			var slideIndex = 1;
			showDivs(slideIndex);
			
			function plusDivs(n) {
				showDivs(slideIndex += n);
			}
			
			function showDivs(n) {
				var i;
				var x = document.getElementsByClassName("mySlides");
				if (n > x.length) {
					slideIndex = 1
				}
				if (n < 1) {
					slideIndex = x.length
				}
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				x[slideIndex - 1].style.display = "block";
			}
		</script>

	</div>

    <jsp:include page="../../module/bottom.jsp" flush="false" />

</body>
</html>

<%
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
%>