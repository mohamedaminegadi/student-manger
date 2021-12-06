<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student researcher</title>
<style>
table {
	width: 100%;
	border: 1px solid black;
	border-collapse: collapse;
	font-family: Arial;
}

td, th {
	border: 1px solid black;
	font-family: Arial;
	padding: 10px;
}

.button {
	background-color: #4CAF50; /* Green */
	color: white;
	padding: 10px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	font-family: Arial;
	margin: 6px 2px;
	cursor: pointer;
	border-radius: 10px;
	border: 2px solid #1c7430
}

.button:hover {
	background-color: #1e7e34;
}

.card {
	padding: 50px 100px;
}

h2 {
	text-align: center;
	font-family: Arial
}
</style>
</head>
<body>
	<div class="card">
		<h2>Student researcher</h2>
		<hr>
		 <a href="<%=request.getContextPath()%>/" class="button">list Student</a>
		 <caption>
				<h2>
					<c:if test="${shearchstudentln == null}">
					 This student ${shearchstudentln.lastName} does not exist
					 </c:if>
					 <c:if test="${shearchstudentln != null}">
					 Student ${shearchstudentln.lastName} ${shearchstudentln.firstName}
					 </c:if>
				</h2>
		</caption>
		<br>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Student ID</th>
					<th>School</th>
					<th>Study Option</th>
					<th>Registration Year</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td><c:out value="${shearchstudentln.id}" /></td>
						<td><c:out value="${shearchstudentln.firstName}" /></td>
						<td><c:out value="${shearchstudentln.lastName}" /></td>
						<td><c:out value="${shearchstudentln.studentId}" /></td>
						<td><c:out value="${shearchstudentln.school}" /></td>
						<td><c:out value="${shearchstudentln.studyOption}" /></td>
						<td><c:out value="${shearchstudentln.registrationYear}" /></td>
						<td>
							<a href="edit?id=<c:out value='${shearchstudentln.id}' />">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; 
							<a href="delete?id=<c:out value='${shearchstudentln.id}' />">Delete</a>
						</td>
					</tr>
			</tbody>
		</table>
	</div>
</body>
</html>