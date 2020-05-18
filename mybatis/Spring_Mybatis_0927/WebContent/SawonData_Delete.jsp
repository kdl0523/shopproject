<%@page import="com.Employee.DAOVO.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%
	int employee_id = Integer.parseInt(request.getParameter("id"));
	EmployeeDAO.employeeDeleteData(employee_id);
	System.out.println("처리완료");
	
	response.sendRedirect("SawonAllData.jsp");
%>
</head>
<body>
</body>
</html>