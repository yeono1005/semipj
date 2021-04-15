<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.jomelon.domain.SuggBoardBean"%>
<%@ page import="java.util.Vector"%>
<%@ page import="com.jomelon.dao.SuggBoardDAO"%>
<!DOCTYPE html>
<html>
<body>


<center>
<h2>��ü �Խñ� ����</h2>
<!-- �Խñ� ���⿡ ī���͸��� �����ϱ����� �������� ���� -->
<%
	//ȭ�鿡 ������ �Խñ��� ������ ����
	int pageSize = 10;
	//���� ī���͸� Ŭ���� ��ȣ���� �о��
	String pageNum = request.getParameter("pageNum");
	//���� ó�� boardList.jsp�� Ŭ���ϰų� ���� ���� �� �ٸ� �Խñۿ��� �� �������� �Ѿ���� pageNum���� ���⿡ null ó���� ����
	if(pageNum==null){
		pageNum = "1";
	}
	int count = 0;	//��ü ���� ������ �����ϴ� ����
	int number = 0;	//������ �ѹ��� ����
	
	//���� ������ �ϴ� ���������ڸ� ����
	int currentPage = Integer.parseInt(pageNum);
	
	//��ü �Խñ��� ������ jsp������ �����;���
	SuggBoardDAO bdao = new SuggBoardDAO();
	//��ü �Խñ��� ������ �о�帰 �޼ҵ� ȣ��
	count = bdao.getAllCount();
	//���� �������� ������ ���� ��ȣ�� ���� = ������ ���̽����� �ҷ��� ���۹�ȣ
	int starRow = (currentPage-1) * pageSize+1;
	int endRow = currentPage * pageSize+1;
	
	//�ֽű� 10���� �������� �Խñ��� ���� �޾��ִ� �޼ҵ� ȣ��
	Vector<SuggBoardBean> vec = bdao.getAllBoard(starRow, endRow);
	//���̺� ǥ���� ��ȣ�� ����
	number = count - (currentPage -1) *pageSize;
%>
<table width="1500" border="1" bgcolor="darkgray">
	<tr height="40">
		<td align="right" colspan="5">
		<input type="button" value="�۾���" onclick="location.href='${pageContext.request.contextPath}/suggBoardWrite.do'">
		</td>
	</tr>
	<tr height="40">
		<td width="50" align="center">��ȣ</td>
		<td width="320" align="center">����</td>
		<td width="100" align="center">�ۼ���</td>
		<td width="150" align="center">�ۼ���</td>
		<td width="80" align="center">��ȸ��</td>
	</tr>
<%
	for(int i=0; i < vec.size(); i++){
		SuggBoardBean bean = vec.get(i);	//���Ϳ� ����Ǿ��ִ� ��Ŭ������ �ϳ��� ����
%>
	<tr height="40">
		<td width="50" align="center"><%=number-- %></td> 
		<td width="320" align="left">
		<a href="${pageContext.request.contextPath}/suggBoardInfo.do?num=<%=bean.getNum()%>" style="text-decoration:none">
		<%
			if(bean.getRe_step() > 1){
				for(int j = 0; j < (bean.getRe_step()-1)*5; j++){
		%>
		&nbsp;
		<% 
				}
			}
		%>			
		<%=bean.getSubject() %> </a> </td>
		<td width="100" align="center"><%=bean.getWriter() %></td>
		<td width="150" align="center"><%=bean.getReg_date() %></td>
		<td width="80" align="center"><%=bean.getReadcount() %></td>
	</tr>
<% } %>
	
</table>
<p>
<!-- ������ ī���͸� �ҽ��� �ۼ� -->
<%
	if(count > 0){
		int pageCount = count / pageSize *(count%pageSize == 0 ? 0 : 1);	//ī���͸� ���ڸ� �󸶱��� �����ٰ��� ����
		
		//���� ������ ���ڸ� ����
		int startPage = 1;
		
		if(currentPage %10 != 0){
			startPage =(int)(currentPage/10)*10+1;
		}else{
			startPage =((int)(currentPage/10)-1)*10+1;
		}
		
		int pageBlock = 10;	//ī���͸� ó������
		int endPage = startPage + pageBlock-1;	//ȭ�鿡 ������ �������� ������ ����
		
		if(endPage > pageCount) endPage = pageCount;
		
		//�����̶�� ��ũ�� ������� �ľ�
		if(startPage > 10){
%>
	<a href="BoardList.jsp?pageNum=<%=startPage-10 %>"> [����] </a>
<% 
		}
		//����¡ ó��
		for(int i = startPage; i <= endPage; i++){
%>
	<a href="BoardList.jsp?pageNum=<%=i %>"> [<%=i %>] </a>
<% 			
		}
		
		//�����̶�� ��ũ�� ������� �ľ�
		if(endPage < pageCount){
%>
	<a href="BoardList.jsp?pageNum=<%=startPage+10 %>"> [����] </a>
<% 			
		}
		
	}
%>

</center>
</body>
</html>