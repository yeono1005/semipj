<%@page import="com.jomelon.dao.SuggBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	String pass = request.getParameter("password");
	int num = Integer.parseInt(request.getParameter("num"));
	
	//������ ���̽� ����
	SuggBoardDAO bdao = new SuggBoardDAO();
	String password = bdao.getPass(num);
	
	//���� �н����尪�� delete form���� �ۼ��� �н����带 ��
	if(pass.equals(password)){
		
		//�н����尡 ���ٸ�
		bdao.deleteBoard(num);
		
		response.sendRedirect("BoardList.jsp");
	}else{
%>

	<script>
	alert("�н����尡 Ʋ���� ���� �Ҽ� �����ϴ�. �н����带 Ȯ�����ּ���");
	history.go(-1);
	</script>
<%		
	}
%>
</body>
</html>