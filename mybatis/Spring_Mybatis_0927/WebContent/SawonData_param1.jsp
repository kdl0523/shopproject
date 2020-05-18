<%@page import="com.Employee.DAOVO.EmployeeVO"%>
<%@page import="com.Employee.DAOVO.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 한명보기</title>
</head>
<% 

	int employee_id = Integer.parseInt(request.getParameter("employee_id"));
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String email = request.getParameter("email");
	String phone_number = request.getParameter("phone_number");
	String hire_date = request.getParameter("hire_date");
	int salary = Integer.parseInt(request.getParameter("salary"));
	String job_id = request.getParameter("job_id");
	
	EmployeeVO employ1 = new EmployeeVO(employee_id, first_name, last_name, email, 
			phone_number, hire_date, salary, job_id);
	
	EmployeeDAO.employeeUpdateData(employ1);
	EmployeeVO employee = EmployeeDAO.employeeSearchData(employee_id);
	
%>

<body>
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
		<td><%=employee.getEmployee_id()%></td>
		<td><%=employee.getFirst_name()%></td>
		<td><%=employee.getLast_name()%></td>
		<td><%=employee.getEmail()%></td>
		<td><%=employee.getPhone_number()%></td>
		<td><%=employee.getHire_date()%></td>
		<td><%=employee.getSalary()%></td>
	</tr>
</table>
<a href="SawonAllData.jsp">사원 전체보기</a>
</body>
</html>