<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); // 한글처리
%>
<%-- 		name: ${param.name }  --%>
<%-- 		content: ${param.content } --%>
<%-- 		${param.name }님, ${param.content } --%>

<div>${param.name }님, ${param.content }</div>

