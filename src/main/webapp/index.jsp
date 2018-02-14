<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample Web</title>
</head>
<body>

        <form action="./Calc" method="POST">            
        	<span>Product List</span>   
            <table style="width:100%">
  			<tr>
    		<th>Product</th>
    		<th>Lastname</th> 
    		<th>Age</th>
  			</tr>
 			<tr>
    			<td>Jill</td>
    			<td>Smith</td> 
    			<td>50</td>
  			</tr>
  			<tr>
    			<td>Eve</td>
    			<td>Jackson</td> 
    			<td>94</td>
  			</tr>
			</table>
        </form>

        <ul>
<%
List<String> history = (List<String>)request.getAttribute("history");
if (history != null) {
for (String item : history) {
%>
        <li><%= item %></li>
<%
}
}
 %>
        </ul>
</body>
</html>