<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

<center>
<h2>�亯�� �Է��ϱ�</h2>

<%
	//�Խñ� �б⿡�� �亯�۾��⸦ Ŭ���ϸ� �Ѱ��ִ� �����͵��� �޾���
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));

%>
<form action="${pageContext.request.contextPath}/suggboard/BoardReWriteFormProc.jsp" method="post">
<table width="1500" border="1" bordercolor="darkgray">
	<tr height="40">
		<td width="150" align="center">�ۼ���</td>
		<td width="450"><input type="text" name="writer" size="60"></td>
	</tr>
	<tr height="40">
		<td width="150" align="center">����</td>
		<td width="450"><input type="text" name="subject" value="[�亯]" size="60"></td>
	</tr>
	<tr height="40">
		<td width="150" align="center">�̸���</td>
		<td width="450"><input type="text" name="email" size="60"></td>
	</tr>
	<tr height="40">
		<td width="150" align="center">��й�ȣ</td>
		<td width="450"><input type="text" name="password" size="60"></td>
	</tr>
	<tr height="40">
		<td width="150" align="center">�۳���</td>
		<td width="450"><textarea rows="10" cols="60" name="content"></textarea></td>
	</tr>
	<!-- form���� ����ڷκ��� �Է¹����ʰ� �����͸� �ѱ� -->
	<tr height="40">
		<td align="center" colspan="2">
		<input type="hidden" name="ref" value="<%=ref %>">
		<input type="hidden" name="re_step" value="<%=re_step %>">
		<input type="hidden" name="re_level" value="<%=re_level %>">
		<input type="submit" value="��۾���Ϸ�"> &nbsp;&nbsp;
		<input type="reset" value="���"> &nbsp;&nbsp;
		<input type="button" onclick="location.href='${pageContext.request.contextPath}/suggBoardList.do'" value="��ü�ۺ���">
		</td>
	</tr>

</table>
</form>
</center>

</body>
</html>