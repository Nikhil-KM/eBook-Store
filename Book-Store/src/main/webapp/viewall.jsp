<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>LIST OF ALL BOOKS</h1>

	<table border="2px solid ">

		<tr>
			<th>BOOK_ID</th>
			<th>BOOK_NAME</th>
			<th>AUTHOR_NAME</th>
			<th>NO_OF_PAGES</th>
			<th>PRICE</th>
			<th>DELETE</th>
			<th>UPDATE</th>
		</tr>

		<%
			ArrayList<Book> books = (ArrayList) request.getAttribute("data");
		for (Book b : books) {
		%>
		<tr>
			<td><%=b.getBook_id()%></td>
			<td><%=b.getBook_name()%></td>
			<td><%=b.getAuthor_name()%></td>
			<td><%=b.getNo_of_pages()%></td>
			<td><%=b.getPrice()%></td>
			<td><a href="delete?id=<%=b.getBook_id()%>">Delete</a></td>
			<td><a href="update1?id=<%=b.getBook_id()%>">Edit</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<a href="welcome.html"></a>
</body>
</html>