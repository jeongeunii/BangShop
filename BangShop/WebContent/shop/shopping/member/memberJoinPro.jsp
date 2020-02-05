<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bangshop.shopping.MemberDAO"%>

<%
	request.setCharacterEncoding("utf-8");

	// 회원가입에 입력한 데이터를 전 페이지에서 가져온다.
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String birth = request.getParameter("birth");
%>

<jsp:useBean id="member" scope="page" class="bangshop.shopping.MemberDTO">
</jsp:useBean>

<%
	member.setName(name);
	member.setId(id);
	member.setPass(pass);
	member.setEmail(email);
	member.setAddr(addr);
	member.setPhone(phone);
	member.setBirth(birth);

	MemberDAO memberDao = MemberDAO.getInstance();
	memberDao.insertMember(member);

	response.sendRedirect("../bangMain.jsp");
%>