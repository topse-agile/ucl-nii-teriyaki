<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample Web</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<style>

table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    font-size: 2em;
}
h1 { 
    display: block;
    font-size: 5em;
    margin-top: 0.67em;
    margin-bottom: 0.67em;
    margin-left: 0;
    margin-right: 0;
    font-weight: bold;
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
        	<h1 style="color:red" align="center">Teriyaki</h1>
            <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp" align="center">
  			<tr>
    		<th style="font-size:2em">product</th>
    		<th style="font-size:2em">price</th> 
    		<th style="font-size:2em">number</th>
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
    		 		<div class="mdl-textfield mdl-js-textfield">
				    	<input style="font-size:24px" class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="sample2" name="arg1" value="<%= request.getAttribute("arg1") %>">
    					<label class="mdl-textfield__label" for="sample2">Number...</label>
    					<span class="mdl-textfield__error">Input is not a number!</span>
  					</div>
    				<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons" type="submit" name="add1" value="+"/>
            		<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="delete1" value="-"/>
            	</td>
            	
  			</tr>
 			<tr>
    			<td>Coffee</td>
    			<td>200<input type="hidden" name="price2" value="200" /></td> 
    			<td>
	    			<div class="mdl-textfield mdl-js-textfield">
				    	<input style="font-size:24px" class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="sample2" name="arg2" value="<%= request.getAttribute("arg2") %>">
    					<label class="mdl-textfield__label" for="sample2">Number...</label>
    					<span class="mdl-textfield__error">Input is not a number!</span>
  					</div>
           			<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="add2" value="+"/>
           			<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="delete2" value="-"/>
            	</td>
  			</tr>
 			<tr>
    			<td>Teriyaki</td>
    			<td>300<input type="hidden" name="price3" value="300" /></td> 
    			<td>
	    			<div class="mdl-textfield mdl-js-textfield">
				    	<input style="font-size:24px" class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="sample2" name="arg3" value="<%= request.getAttribute("arg3") %>">
    					<label class="mdl-textfield__label" for="sample2">Number...</label>
    					<span class="mdl-textfield__error">Input is not a number!</span>
  					</div>
           			<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="add3" value="+"/>
           			<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="delete3" value="-"/>
            	</td>
  			</tr>
 			<tr>
    			<td>Magazine</td>
    			<td>300<input type="hidden" name="price4" value="300" /></td> 
    			<td>
	    			<div class="mdl-textfield mdl-js-textfield">
				    	<input style="font-size:24px" class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="sample2" name="arg4" value="<%= request.getAttribute("arg4") %>">
    					<label class="mdl-textfield__label" for="sample2">Number...</label>
    					<span class="mdl-textfield__error">Input is not a number!</span>
  					</div>
           			<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="add4" value="+"/>
           			<input class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored material-icons"type="submit" name="delete4" value="-"/>
            	</td>
  			</tr>
			</table>
			<div align="center" style="font-size:2em; margin-top: 0.67em;">
				<input class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"type="submit" name="calculate" value="OK"/>
	  			Total Cost
	  			<div class="mdl-textfield mdl-js-textfield">
				    <input style="font-size:24px" class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="sample2" name="total" value="<%= request.getAttribute("total") %>">
    				<label class="mdl-textfield__label" for="sample2">Number...</label>
    				<span class="mdl-textfield__error">Input is not a number!</span>
  				</div>
			</div>
  			
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