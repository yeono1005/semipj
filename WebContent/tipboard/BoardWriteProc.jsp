<%@page import="com.jomelon.dao.TipBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<!-- 게시글 작성한 데이터를 한번에 읽어 드림  -->
		<jsp:useBean id = "boardbean" class= "com.jomelon.domain.TipBoardBean">
		<jsp:setProperty name="boardbean" property = "*" />
	</jsp:useBean>
	

	<%
		//데이터 베이스 쪽으로 빈 클래스를 넘겨줌
		TipBoardDAO bdao = new TipBoardDAO();
	
		//데이터 저장 메소드를 호출
		bdao.insertBoard(boardbean);
		
		//게시글 저장후 전체 게시글 보기
		response.sendRedirect("../tipBoardList.do");
	%>
</body>
</html>