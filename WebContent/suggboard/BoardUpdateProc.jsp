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
<!-- ����� �����͸� �о�帮�� ��Ŭ���������� -->
<jsp:useBean id="boardbean" class="com.jomelon.domain.SuggBoardBean">
	<jsp:setProperty name="boardbean" property="*" />
</jsp:useBean>
<%
	//������ ���̽��� ����
	SuggBoardDAO bdao = new SuggBoardDAO();
	//�ش� �Խñ��� �н����尪�� ����
	String pass = bdao.getPass(boardbean.getNum());
	
	//�⺻ �н����尪�� update�� �ۼ��ߴ� password���� ������ ��
	if(pass.equals(boardbean.getPassword())){
		//������ �����ϴ� �޼ҵ� ȣ��
		bdao.updateBoard(boardbean);
		response.sendRedirect("../suggBoardList.do");
	}else{	//�н����尡 Ʋ���ٸ�
%>
		<script type="text/javascript">
		alert("�н����尡 ��ġ ���� �ʽ��ϴ�. �ٽ� Ȯ���� �������ּ���");
		history.go(-1);
		</script>
<%
	}
%>
</body>
</html>