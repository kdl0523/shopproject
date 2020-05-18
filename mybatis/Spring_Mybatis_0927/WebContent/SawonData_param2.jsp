<%@page import="java.util.List"%>
<%@page import="com.Employee.DAOVO.EmployeeDAO"%>
<%@page import="com.Employee.DAOVO.EmployeeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 한명 보기</title>
</head>
<% 
	EmployeeVO employee = EmployeeDAO.employeeSearch2Data(105, "Austin");
%>
<body>
<h1><%=employee.getEmployee_id()%>이고 <%=employee.getLast_name()%>사원 정보 출력</h1>


<table border=2>
	<tr>
		<th>사번</th>
		<th>이름</th>
		<th>성</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>입사일</th>
		<th>급여</th>
	</tr>
	
	<tr>
		<td><%=employee.getEmployee_id()%></a></td>
		<td><%=employee.getFirst_name()%></td>
		<td><%=employee.getLast_name()%></td>
		<td><%=employee.getEmail()%></td>
		<td><%=employee.getPhone_number()%></td>
		<td><%=employee.getHire_date()%></td>
		<td><%=employee.getSalary()%></td>
	</tr>
	
</table>
</body>
</html>