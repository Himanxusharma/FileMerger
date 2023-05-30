<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<script src="<c:url value="/resources/js/mergeView.js" />"></script>
	<script>
		var dataMap = ${mergedDataMap};
		// Call a function in your JavaScript file and pass the dataMap variable
		view(dataMap);
		
		
	</script>
</head>
<body>
	<h3>Successfully uploaded.</h3>

<!-- 	<h2>Merged Data Map:</h2>
	<table>
		<tr>
			<th>Key</th>
			<th>Value</th>
		</tr>


		<c:forEach items="${mergedDataMap}" var="entry">
			<tr>
				<td>${entry.key}</td>
				<td>${entry.value}</td>
			</tr>

		</c:forEach>
	</table>  -->
	
<h2>Merged Data Map:</h2>
<table id="mergedTable">
    <tr>
        <th>Value</th>
    </tr>

    <c:forEach items="${mergedDataMap}" var="entry">
        <tr>
            <td>${entry.value}</td>
        </tr>
    </c:forEach>
</table>

<!-- Add CSS and JavaScript for table formatting -->
<style>
    #mergedTable {
        border-collapse: collapse;
        width: 100%;
    }

    #mergedTable th, #mergedTable td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }

    #mergedTable th {
        background-color: #f2f2f2;
    }
</style>

<script>
    // Add JavaScript for table styling or any other desired functionality
    // For example, you can add sorting or filtering functionality using a JavaScript library like DataTables.js
    // Here's an example of initializing DataTables.js for the merged table:
    $(document).ready(function() {
        $('#mergedTable').DataTable();
    });
</script>


	
	
	

<!-- 	<table id="data-table" class="responsive-table">
		<thead>
			<tr>
				<th>Key</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody id="data-body">
			Data rows will be dynamically added here
		</tbody>
	</table>
	
	 -->
<%-- 	    <table class="responsive-table">
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
        <% for (HashMap.Entry<String, String> entry : dataMap.entrySet()) { %>
            <tr>
                <td><%= entry.getKey() %></td>
                <td><%= entry.getValue() %></td>
            </tr>
        <% } %>
    </table> --%>

</body>
</html>