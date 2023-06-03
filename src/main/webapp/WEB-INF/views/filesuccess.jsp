<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FILEMERGER</title>
<script src="<c:url value="/resources/js/mergeView.js" />"></script>
<!-- Latest compiled and minified CSS -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/Preview.css" />"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="<c:url value="/resources/js/script.js" />"></script>
<script src="<c:url value="/resources/js/Preview.js" />"></script>


<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- Navbar -->

	<nav>
		<div class="logo text-center">
			<a href="/fileMerger/">File Merger</a>
		</div>
		<ul class="nav-links">
			<!-- <li><a href= "about" >About</a></li> -->
		</ul>
		<div class="burger">
			<div class="line1"></div>
			<div class="line2"></div>
			<div class="line3"></div>
		</div>
	</nav> 
	<h1>Merged</h1>

<style>
    /* CSS styles for the table */
    table {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #ddd; /* Add border around the table */
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        border-right: 1px solid #ddd;
    }
    th:last-child, td:last-child {
        border-right: none;
    }
</style>


<table id="data-table">
    <tbody>
        <c:forEach var="entry" items="${mergedDataMap}">
            <tr>
                <c:set var="values" value="${entry.value.split(';')}" />
                <c:forEach var="value" items="${values}">
                    <td>${value}</td>
                </c:forEach>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- JavaScript code for table functionality -->
<script>
    // Add a CSS class to alternate rows for better readability
    var rows = document.querySelectorAll('#data-table tbody tr');
    for (var i = 0; i < rows.length; i++) {
        if (i % 2 === 0) {
            rows[i].classList.add('even-row');
        } else {
            rows[i].classList.add('odd-row');
        }
    }
</script>


	<!-- footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h4>About Us</h4>
					<p>File Merger is a web-based tool for merging two CSV and text
						files based on a common column. This website offers a convenient
						and efficient way to merge data from multiple sources into a
						single, comprehensive file.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<hr>
					<p class="text-center">&copy; 2023 File Merger. All rights
						reserved.</p>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>