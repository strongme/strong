<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String code = request.getParameter("code");
//response.sendRedirect(request.getContextPath()+"/accessTokenAction.action?code="+code);
//response.sendRedirect("http://strong.cloudfoundry.com/accessTokenAction.action?code="+code);
%>
<%=code%>
