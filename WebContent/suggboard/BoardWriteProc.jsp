<%@page import="com.jomelon.dao.SuggBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("euc-kr"); // �ѱ�ó��
%>
<!-- �Խñ� �ۼ��� �����͸� �ѹ��� �о�帲 -->
<jsp:useBean id="boardbean" class="com.jomelon.domain.SuggBoardBean">
	<jsp:setProperty name="boardbean" property="*"></jsp:setProperty>
</jsp:useBean>

<%
	// ������ ���̽� ������ ��Ŭ������ �Ѱܿ�
	SuggBoardDAO bdao = new SuggBoardDAO();
	
	// ������ ���� �޼ҵ带 ȣ��
	bdao.insertBoard(boardbean);
	
	// �Խñ� ������ ��ü �Խñ� ����
	response.sendRedirect("../suggBoardList.do");
%>
</body>
</html>