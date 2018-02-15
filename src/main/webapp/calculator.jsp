<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample Web</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
<script type="text/javascript">
function countup(btn_name, number_product_id) {
	var number = parseInt(document.getElementById(number_product_id).value);
	document.getElementById(number_product_id).value = number + 1;
}
function countdown(btn_name, number_product_id) {
	var number = parseInt(document.getElementById(number_product_id).value);
	if (number > 0) {
		document.getElementById(number_product_id).value = number - 1;		
	}
}
</script>
</head>
<body>

<!--         <form action="./Calc" method="POST">-->  
		<form action="./countUp" method="POST">
    			               
        	<span>Product List</span>   
            <table style="width:100%">
  			<tr>
    		<th>product</th>
    		<th>price</th> 
    		<th>number</th>
  			</tr>
 			<tr>
    			<td>Tea</td>
    			<td>100<input type="hidden" name="price1" value="100" /></td>
    			<!-- 
    			<td><input id="number_tea" type="text" value="0"/></td>
    			<td><input onclick="countup('countup_tea', 'number_tea')" type="button" value="+"/></td>
    			<td><input type="button" value="-"/></td>
    		 	-->
    		 	<td>
    					<input type="text" name="arg1" value="<%= request.getAttribute("arg1") %>" />
            			<input type="submit" name="add1" value="+"/>
            			<input type="submit" name="delete1" value="-"/>
            	</td>
            	
  			</tr>
 			<tr>
    			<td>Coffee</td>
    			<td>200<input type="hidden" name="price2" value="200" /></td> 
    			<td>
    					<input type="text" name="arg2" value="<%= request.getAttribute("arg2") %>" />
            			<input type="submit" name="add2" value="+"/>
            			<input type="submit" name="delete2" value="-"/>
            	</td>
  			</tr>
 			<tr>
    			<td>Teriyaki</td>
    			<td>300<input type="hidden" name="price3" value="300" /></td> 
    			<td>
    					<input type="text" name="arg3" value="<%= request.getAttribute("arg3") %>" />
            			<input type="submit" name="add3" value="+"/>
            			<input type="submit" name="delete3" value="-"/>
            	</td>
  			</tr>
 			<tr>
    			<td>Magazine</td>
    			<td>300<input type="hidden" name="price4" value="300" /></td> 
    			<td>
    					<input type="text" name="arg4" value="<%= request.getAttribute("arg4") %>" />
            			<input type="submit" name="add4" value="+"/>
            			<input type="submit" name="delete4" value="-"/>
            	</td>
  			</tr>
			</table>
  			<input type="submit" name="calculate" value="OK"/>
  			Total Cost
  			<input type="text" name="total" value="<%= request.getAttribute("total") %>"/>
  			</form>
  <!--       </form> -->

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