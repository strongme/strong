<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="w" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload Image</title>
</head>
<body>
<form action="uploadAction" method="post" enctype="multipart/form-data">
	<input type="file" name="upload">
	<w:fielderror></w:fielderror>
	<input type="submit">
</form>


<!-- <iframe id="tokeninframe" src="https://api.weibo.com/oauth2/authorize?client_id=1098733788&response_type=code&redirect_uri=http://strong.cloudfoundry.com/middle/index.jsp" id="main"></iframe> -->

<a href="<%=request.getContextPath()%>/accessCodeAction" id="redirect">GOGO</a>



<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-1.7.2.js"></script>
<script type="text/javascript">


	$(function() {
		
	});
</script>
</body>
</html>