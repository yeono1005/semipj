<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
<h2>�Խñ� ����</h2>

<form action="${pageContext.request.contextPath}/suggboard/BoardWriteProc.jsp" method="post">
<table width="1500" border="1" bordercolor="gray" bgcolor="darkgray">
	<tr height="40">
		<td align="center" width="150">�ۼ���</td>
		<td width="450"><input type="text" name="writer"></td>
	</tr>
	<tr height="40">
		<td align="center" width="150">����</td>
		<td width="450"><input type="text" name="subject"></td>
	</tr>
	<tr height="40">
		<td align="center" width="150">�̸���</td>
		<td width="450"><input type="email" name="email"></td>
	</tr>
	<tr height="40">
		<td align="center" width="150">��й�ȣ</td>
		<td width="450"><input type="password" name="password"></td>
	</tr>
	<tr height="40">
		<td align="center" width="150">�۳���</td>
		<td width="450"><textarea rows="10" cols="50" name="content"></textarea></td>
	</tr>
	<tr height="40">
		<td align="center" colspan="2"></td>
		<input type="submit" value="�۾���"> &nbsp;&nbsp;
		<input type="reset" value="�ٽ��ۼ�"> &nbsp;&nbsp;
		<button onclick="location.href='BoardList.jsp'">��ü �Խñۺ���</button>
	</tr>
	
</table>
</form>

</center>
</body>
</html>