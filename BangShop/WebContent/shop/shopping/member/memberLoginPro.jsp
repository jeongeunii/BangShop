<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bangshop.shopping.MemberDAO"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	// System.out.println(id + " : " + passwd);

	MemberDAO memberDao = MemberDAO.getInstance();

	int check = memberDao.checkPass(id, pass);

	if (check == 1) { // 비밀번호 일치 (rtnVal = 1; // 인증 성공)
		// 아이디와 비밀번호가 맞으면 세션을 발급한다.
		session.setAttribute("memberId", id);
		response.sendRedirect("../bangMain.jsp"); // 폴더 한 칸 앞으로 전진
	} else if (check == 0) { // rtnVal = 0; // 비밀번호가 틀림
%>
<script>
	alert("비밀번호가 맞지 않습니다!");
	history.go(-1); // -1(바로 전페이지)로 보낸다.
</script>
<%
	} else { // rtnVal = -1; // 해당 아이디가 없다.
%>
<script>
	alert("아이디가 맞지 않습니다!");
	history.go(-1);
</script>
<%
	}
%>