<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BookDAO"%>

<jsp:useBean id="u" class="com.crud.bean.BookVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BookDAO bookDAO = new BookDAO();
	int i = bookDAO.insertBook(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>
