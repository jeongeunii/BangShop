<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bangshop.shopping.ProductDAO"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String realFolder = ""; // 웹 애플리케이션상의 절대 경로
	String filename = "";
	MultipartRequest mpReq = null;
	
	String saveFolder = "/img"; // 파일이 업로드되는 폴더 지정
	String encType = "utf-8"; // 인코딩 타입
	int maxSize = 2 * 1024 * 1024; // 최대 업로드 크기 2MB
	
	// 현재 jsp페이지의 웹 애플리케이션 절대 경로
	ServletContext context = getServletContext();
	realFolder = context.getRealPath(saveFolder);
	
	try {
		// 전송을 담당할 컴포넌트 생성 후 파일 전송
		// 전송할 파일명을 가지고있는 객체
		mpReq = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		// 전송한 파일 정보 출력
		Enumeration<?> files = mpReq.getFileNames();
		
		// 파일 정보가 있다면
		while (files.hasMoreElements()) {
			// input 태그의 type이 file인 태그의 name 속성값 : 파라미터 이름
			String name = (String) files.nextElement();
		
			// 폼에서 선택한 파일 이름 얻어오기 -> 서버에 저장된 파일 이름
			filename = mpReq.getFilesystemName(name);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<jsp:useBean id="product" scope="page" class="bangshop.shopping.ProductDTO" />

<%
	// encType을 "multipart/form-data"로 선언하고 submit한 데이터들은 request 객체가 아닌 MultipartRequest 객체로 불러와야 함
	String image = filename;
	String category = mpReq.getParameter("category");
	String place = mpReq.getParameter("place");
	String proStatus = mpReq.getParameter("proStatus");
	String title = mpReq.getParameter("title");
	String price = mpReq.getParameter("price");
	String deliPay = mpReq.getParameter("deliPay");
	String changeOk = mpReq.getParameter("changeOk");
	String proCount = mpReq.getParameter("proCount");
	String proComment = mpReq.getParameter("proComment");
	String tag = mpReq.getParameter("tag");
	
	// form 화면에서 가져온 데이터를 DTO에 보내기
	product.setImage(image);
	product.setCategory(category);
	product.setPlace(place);
	product.setProStatus(proStatus);
	product.setTitle(title);
	product.setPrice(price);
	product.setDeliPay(deliPay);
	product.setChangeOk(changeOk);
	product.setProCount(proCount);
	product.setProComment(proComment);
	product.setTag(tag);
	
	ProductDAO productDao = ProductDAO.getInstance();
	productDao.insertProduct(product);
	
	response.sendRedirect("../store/storeList.jsp");
%>