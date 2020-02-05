<%@page import="bangshop.shopping.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bangshop.shopping.ProductDAO"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>

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

<jsp:useBean id="jjim" scope="page" class="bangshop.shopping.ProductDTO" />

<%
			// encType을 "multipart/form-data"로 선언하고 submit한 데이터들은 request 객체가 아닌 MultipartRequest 객체로 불러와야 함
			String image = imageName;
			String category = product.getCategory();
			String place = product.getPlace();
			String proStatus = product.getProStatus();
			String title = product.getTitle();
			String price = product.getPrice();
			String deliPay = product.getDeliPay();
			String changeOk = product.getChangeOk();
			String proCount = product.getProCount();
			String proComment = product.getProComment();
			String tag = product.getTag();
			
			// form 화면에서 가져온 데이터를 DTO에 보내기
			jjim.setImage(image);
			jjim.setCategory(category);
			jjim.setPlace(place);
			jjim.setProStatus(proStatus);
			jjim.setTitle(title);
			jjim.setPrice(price);
			jjim.setDeliPay(deliPay);
			jjim.setChangeOk(changeOk);
			jjim.setProCount(proCount);
			jjim.setProComment(proComment);
			jjim.setTag(tag);
			
			productDao.insertJjimProduct(product);
			
			response.sendRedirect("../store/jjimList.jsp");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>