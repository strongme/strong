<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="w" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<w:if test="age>10">
	<w:property value="%{age}"/>我大于10岁啊
</w:if>
<w:else>
	<w:property value="%{age}"/>
	<w:text name="%{age}">
	</w:text>
	<w:label value="%{#request.count}"></w:label>
	我小于10岁啊
</w:else>

<hr>

<w:if test="#request['count']>10">
	${requestScope.count}我也大于10岁啊
</w:if>
<w:else>
	o(︶︿︶)o 唉  我还是小于10岁
</w:else>
<w:debug></w:debug>
</body>
</html>