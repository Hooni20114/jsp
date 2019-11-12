<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 세션정보 초기화
	session.invalidate();
	
	response.sendRedirect("./login.jsp");
%>