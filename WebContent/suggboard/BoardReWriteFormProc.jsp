<%@page import="com.jomelon.dao.SuggBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!-- �����͸� �ѹ��� �޾ƿ��� ��Ŭ������ ����ϵ��� -->
<jsp:useBean id="boardbean" class="com.jomelon.domain.SuggBoardBean">
	<jsp:setProperty name="boardbean" property="*" /> 
</jsp:useBean>

<%
	//�����ͺ��̽� ��ü ����
	SuggBoardDAO bdao = new SuggBoardDAO();
	bdao.reWriteBoard(boardbean);
	
	//�亯 �����͸� ��� ������ ��ü �Խñ� ���⸦ ����
	response.sendRedirect("../suggBoardList.do");
%>
</body>
</html>