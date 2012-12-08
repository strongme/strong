<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String code = request.getParameter("code");
%>
<form action="accessTokenAction" method="post" name="token">
	<input type="hidden" name="code" value="<%=request.getParameter("code")%>">
</form>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-1.7.2.js"></script>
<script type="text/javascript">
	
	window.onload = function() {
		token.submit();
	};
	
	
</script>
</body>
</html>