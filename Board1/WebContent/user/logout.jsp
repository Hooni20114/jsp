<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 세션이 모든 데이터 초기화
	session.invalidate();

	// 로그인페이지 이동
	response.sendRedirect("./login.jsp");

%>