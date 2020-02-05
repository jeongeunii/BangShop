<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bangshop.shopping.ProductDAO"%>
<%@page import="bangshop.shopping.ProductDTO"%>
<%@ page import="java.util.List"%>

<%
	String memberId = "";
	try {
		memberId = (String) session.getAttribute("memberId");
		ProductDAO productDao = ProductDAO.getInstance();
		List<ProductDTO> productList = productDao.getProductSimple();
		
		ProductDTO product = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>center.jsp</title>
<style>
#search {
   font-family: "Lobster", serif;
   text-align: center;
}
a {
   text-decoration:none !important;
}
</style>
</head>
<body>

	<nav class="w3-sidebar w3-bar-block w3-card" id="mySidebar">
		<div class="w3-container w3-theme-d2" style="padding-left: 0px; padding-right: 0px;">
			<span onclick="closeSidebar()" class="w3-btn w3-display-topright w3-small"
				style="background-color: #6B66FF; width: 30px;">
				X
			</span>
			<div class="w3-center" style="background-color: #6B66FF; width: 200px;">
				<a href="<%=request.getContextPath()%>/shop/shopping/bangMain.jsp">
					<img class="w3-circle" src="<%=request.getContextPath()%>/img/user.PNG" alt="user" style="width:75%">
				</a>
			</div>
		</div>
		
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=wc">여성의류</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=mc">남성의류</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=fs">패션잡화</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=ch">유아동/출산</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=sp">스포츠/레저</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=dg">디지털/가전</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=bk">도서/티켓</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=lv">생활/가구</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=st">스타굿즈</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=cr">차량</a>
		<a class="w3-bar-item w3-button" href="../shopping/listMain.jsp?kind=et">기타</a>
	</nav>

	<header class="w3-bar w3-card w3-theme w3-lobster" style="height:50px; background-color: #6B66FF !important;">
		<button class="w3-bar-item w3-btn w3-xlarge w3-hover-border-white" onclick="openSidebar()"
			style="height:50px; margin-left: 20px; background-color: #6B66FF" id="bb">
			&#9776;
		</button>
		<p class="w3-bar-item w3-xlarge"
			style="height:50px; margin-top: 0px; margin-bottom: 0px; background-color: #6B66FF;">
			Category
		</p>
	</header>
	
	<div class="container mt-3" style="margin-bottom: 20px; width: 1300px;">
		<nav class="navbar navbar-expand-sm justify-content-center"
			style="padding-top: 10px; padding-bottom: 10px; margin-bottom: 15px; padding-left: 0;">
			<ul class="navbar-nav" style="width: 100%;">
				<li style="margin-left: 598px; margin-right: 10px;">
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
			System.out.print(realFolder);
			realFolder = "http://localhost:8889/BangShop/img";
		%>
		
		<div class="form-inline" style="width: 1300px;">
			<%
				for (int i = 0; i < productList.size(); i++) {
					product = (ProductDTO) productList.get(i);
					String imageName = product.getImage();
			%>
			<div class="card w3-hover-shadow"
				style="width: 250px; height: 250px; margin-right: 30px; margin-bottom: 30px;">
				<img class="card-img-top" src="<%=realFolder%>/<%=imageName%>" alt="상품이미지 준비중"
					style="width:250px; height: 150px;">
				<div class="card-body">
					<h5 class="card-title"><b><%=product.getTitle()%></b></h5>
					<p class="card-text"><%=product.getPrice()%>원</p>
					<a href="
						<%if (memberId == null || memberId.equals("")) {%>
							<%=request.getContextPath()%>/shop/shopping/store/backToMain.jsp
						<%} else {%>
							<%=request.getContextPath()%>/shop/shopping/store/detailList.jsp?no=<%=product.getProNo()%>
						<%}%>"
						class="stretched-link">
					</a>
				</div>
			</div>
			<%
				} // end of for
			%>
		</div>
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
		
		closeSidebar();
		function openSidebar() {
			document.getElementById("mySidebar").style.display = "block";
		}
		
		function closeSidebar() {
			document.getElementById("mySidebar").style.display = "none";
		}
	</script>
   
</body>
</html>

<%
   } catch (Exception e) {
      e.printStackTrace();
   }
   
%>