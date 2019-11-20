<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.board1.bean.BoardMemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	

	String title   = request.getParameter("subject");
	String content = request.getParameter("content");
	String regip   = request.getRemoteAddr();
	
	BoardMemberBean bmb = (BoardMemberBean)session.getAttribute("member");
	String uid = bmb.getUid();

	// DB정보
	String host = "jdbc:mysql://192.168.44.9/chhak";
	String user = "chhak";
	String pass = "1q2w3e";
	
	//1단계
	Class.forName("com.mysql.jdbc.Driver");
	
	//2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	//3단계
	Statement stmt = conn.createStatement();
	
	// 4단계
	String sql  = "INSERT INTO `BOARD_ARTICLE` SET ";		
	       sql += "`parent`=0,";
	       sql += "`cate`='free',";
	       sql += "`title`='"+title+"',";
	       sql += "`content`='"+content+"',";
	       sql += "`file`=0,";
	       sql += "`uid`='"+uid+"',";
	       sql += "`regip`='"+regip+"',";
	       sql += "`rdate`=NOW();";
	
	stmt.executeUpdate(sql);	       
	       
	// 5단계
	// 6단계
	stmt.close();
	conn.close();

	// 리스트페이지 이동
	response.sendRedirect("./list.jsp");

%>