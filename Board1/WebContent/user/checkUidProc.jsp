<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");

	//DB정보
	String host = "jdbc:mysql://192.168.44.9/chhak";
	String user = "chhak";
	String pass = "1q2w3e";

	// 1단계
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	// 3단계
	Statement stmt = conn.createStatement();
	
	// 4단계
	String sql = "SELECT COUNT(*) FROM `BOARD_MEMBER` WHERE `uid`='"+uid+"';";
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5단계
	JSONObject json = new JSONObject(); 
	
	if(rs.next()){
		json.put("result", rs.getInt(1));
	}
	
	// 6단계
	rs.close();
	stmt.close();
	conn.close();

	// json 출력
	out.print(json);

%>