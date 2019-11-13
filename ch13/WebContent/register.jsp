<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		String hp = request.getParameter("hp");
		String pos = request.getParameter("pos");
		String rdate = request.getParameter("rdate");
	%>
	<p>
		이름 : <%= name %><br>
		휴대폰 : <%= hp %><br>
		직급 : <%= pos %><br>
		입사일 : <%= rdate %><br>
	</p>
	
</body>
</html>