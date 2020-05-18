<%@page import="com.Employee.DAOVO.EmployeeVO"%>
<%@page import="com.Employee.DAOVO.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 수정하기</title>
</head>
<% 
	int id = Integer.parseInt(request.getParameter("id"));
	System.out.println(id);
	EmployeeVO employee1 = EmployeeDAO.employeeSearchData(id);
%>

<body>
<h1>사원 수정하기</h1>
<hr>
<form action="SawonData_param1.jsp">
<table border=2>
	<tr>
		<th>사번</th>
		<td><%=employee1.getEmployee_id()%></td>
		<input type="hidden" name="employee_id" value="<%=employee1.getEmployee_id()%>">
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="first_name" value="<%=employee1.getFirst_name()%>">
		</td>
	</tr>
	<tr>	
		<th>성</th>
		<td><input type="text" name="last_name" value="<%=employee1.getLast_name()%>">
		</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><%=employee1.getEmail()%></td>
		<input type="hidden" name="email" value="<%=employee1.getEmail()%>">
	</tr>
	<tr>
		<th>전화번호</th>
		<td><%=employee1.getPhone_number()%></td>
		<input type="hidden" name="phone_number" value="<%=employee1.getPhone_number()%>">
	</tr>
	<tr>
		<th>입사일</th>
		<td><%=employee1.getHire_date()%></td>
		<input type="hidden" name="hire_date" value="<%=employee1.getHire_date()%>">
	</tr>
	<tr>
		<th>급여</th>
		<td><input type="text" name="salary" value="<%=employee1.getSalary()%>">
		</td>
	</tr>
</table>

<table>
	<tr>
		<td>
			<input type="button" value="사원전체보기" onclick="location.href='SawonAllData.jsp'">
			<input type="submit" value="수정">
			<input type="button" value="삭제" onclick="location.href='SawonData_Delete.jsp?id=<%=employee1.getEmployee_id()%>'">
		</td>
	</tr>
</table>
</form>
</body>
</html>