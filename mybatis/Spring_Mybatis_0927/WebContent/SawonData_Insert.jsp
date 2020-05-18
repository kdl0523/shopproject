<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.Employee.DAOVO.EmployeeVO"%>
<%@page import="com.Employee.DAOVO.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%
	/* 사번, 이름, 성, 이메일, 전화, 입사일, 급여, job_id
	   employee_id email unique 에러주의
	*/
	
	/* EmployeeVO empvo1 = new EmployeeVO(221, "David", "kim", "DKIMKIMKIM11", 
			"010-7777-3333", "13-12-05", 3000, "ST_CLERK"); */
		
	EmployeeVO empvo1 = new EmployeeVO(226, "Sinda", "Kim", "DKIMKIMKIM16", 
		"010-9898-9898", "19-10-01", 3500, "ST_CLERK");
	
	/* EmployeeDAO.employeeInsertData(empvo1); */
	
	EmployeeDAO.employeeInsertData(empvo1);
	List<EmployeeVO> list1 = EmployeeDAO.employeeAllData();
	
%>
</head>
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
		<th>부서</th>
	</tr>
	
	<% for(EmployeeVO imsi : list1) { %>
	<tr>
		<td><a href="SawonOneData.jsp?id=<%=imsi.getEmployee_id()%>"><%=imsi.getEmployee_id()%></a></td>
		<td><%=imsi.getFirst_name()%></td>
		<td><%=imsi.getLast_name()%></td>
		<td><%=imsi.getEmail()%></td>
		<td><%=imsi.getPhone_number()%></td>
		<td><%=imsi.getHire_date()%></td>
		<td><%=imsi.getSalary()%></td>
		<td><%=imsi.getJob_id()%></td>
	<% } %>
	</tr>
</table>

</body>
</body>
</html>