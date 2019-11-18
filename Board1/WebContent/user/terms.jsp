<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// DB정보
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
	String sql = "SELECT * FROM `BOARD_TERMS`;";
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5단계
	String terms   = null;
	String privacy = null;
	
	if(rs.next()){
		
		terms   = rs.getString(1);
		privacy = rs.getString(2);
		
	}
	
	
	// 6단계
	rs.close();
	stmt.close();
	conn.close();

%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>회원약관</title>
		<link rel="stylesheet" href="/Board1/css/style.css" />		
	</head>

	<body>
		<div id="terms">
			<section>
				<table>
					<caption>사이트 이용약관</caption>
					<tr>
						<td>
							<textarea readonly><%= terms %></textarea>
							<div>
								<label><input type="checkbox" name="chk1" />&nbsp;동의합니다.</label>        
							</div>
						</td>
					</tr>
				</table>
			</section>			
			<section>
				<table>
					<caption>개인정보 취급방침</caption>
					<tr>
						<td>
							<textarea readonly><%= privacy %></textarea>
							<div>
								<label><input type="checkbox" name="chk2" />&nbsp;동의합니다.</label>        
							</div>
						</td>
					</tr>
				</table>
			</section>
			
			<div>
				<a href="#" class="btnCancel">취소</a>
				<a href="#" class="btnNext">다음</a>
			</div>
			
		</div>
	</body>
</html>











