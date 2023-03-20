<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update lead</title>
</head>
<body>
	<h2>Update lead</h2>
	<form action="updateOneLead" method="post">
		<pre>
			<input type="hidden" name="id" value="${lead.id}"/>
			First Name <input type="text" name="firstName" value="${lead.firstName}"/>
			Last Name  <input type="text" name="lastName" value="${lead.lastName}"/>
			Email	   <input type="text" name="email" value="${lead.email}"/>
			Mobile     <input type="text" name="mobile" value="${lead.mobile}"/>
			source:    <select name="source" value="${lead.source}">
						<option value="radio">radio</option>
						<option value="news paper">news paper</option>
						<option value="trade show">trade show</option>
						<option value="website">website</option>
					   </select>
			<input type="submit" value="update"/>		
		</pre>
	</form>
	
</body>
</html>