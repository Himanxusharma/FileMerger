<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Form is running</h3>

	<form action="uploadfile" method="post" enctype="multipart/form-data">
		<input type="file" id="myFile" name="file1" name="file" > 

		<input type="file" id="myFile" name="file2" name="file" > 
		<button Class="" name="upload">Upload</button>
	</form>

</body>
</html>