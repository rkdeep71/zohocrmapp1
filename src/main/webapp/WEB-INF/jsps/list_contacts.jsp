<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ include file="menu.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contacts</title>
</head>
<body>
	<h2>All Contacts</h2>
	<table>
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Source</th>
			<th>Billing</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="contact" items="${contacts}">
			<tr>
				<td><a href="contactInfo?id=${contact.id}">${contact.firstName}</a></td>
				<td>${contact.lastName}</td>
				<td>${contact.email}</td>
				<td>${contact.mobile}</td>
				<td>${contact.source}</td>
				<td><a href="generateBill?id=${contact.id}">billing</a></td>
				<td><a href="updateContact?id=${contact.id}">update</a></td>
				<td><a href="deleteContact?id=${contact.id}">delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>