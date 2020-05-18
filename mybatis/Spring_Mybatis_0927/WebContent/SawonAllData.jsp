<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@page import="com.Employee.DAOVO.*"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 전체보기</title>
</head>

<% 
	List<EmployeeVO> list1 = EmployeeDAO.employeeAllData();
	/* 나는 employeeAllData()메소드 호출로 끄읕~
	select.ListAll() --> <select * from employees -->
	이걸 처리한 결과값이 return 되므로 여기로 와서 list1 컬렉션 객체로 들어감
	*/
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
		<th>부서</th>
	</tr>
	
	<% for(EmployeeVO imsi : list1) { %>
	<tr>
		<td><a href="SawonData_Update.jsp?id=<%=imsi.getEmployee_id()%>"><%=imsi.getEmployee_id()%></a></td>
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
</html>