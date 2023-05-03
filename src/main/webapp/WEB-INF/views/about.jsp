<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html  lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <!-- Latest compiled and minified CSS -->
    <link href= "<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="<c:url value="/resources/js/script.js" />"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    
    
<!-- Navbar -->

<nav>
    <div class="logo">
      <a href="#">File Merger</a>
    </div>
    <ul class="nav-links">
      <li><a href="random">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="table">Tables</a></li>
      <li><a href="form">Contact</a></li>
    </ul>
    <div class="burger">
      <div class="line1"></div>
      <div class="line2"></div>
      <div class="line3"></div>
    </div>
  </nav>
 

  <div class="bcontainer">
    <h2>Overview</h2>
    <p>File Merger is a web-based tool for merging two CSV and text files based on a common column. This website offers a convenient and efficient way to merge data from multiple sources into a single, comprehensive file.</p>
    <div class="list-container">
      <h2>Features</h2>
      <ul class="list">
        <li><b>Merge two CSV files based on a common column:</b> File Merger allows users to easily merge two CSV files based on a shared column. This feature is particularly useful for combining data from multiple sources into a single, comprehensive file.</li>
        <li><b>Merge a text file with a CSV file based on a common column:</b> In addition to merging two CSV files, File Merger also allows users to merge a text file with a CSV file based on a common column. This feature is particularly useful for users who have data stored in a variety of formats.</li>
        <li><b>Simple and intuitive user interface:</b> File Merger features a simple and intuitive user interface that makes it easy to navigate and use. Even users with limited technical expertise can quickly learn how to use the website.</li>
        <li><b>High-performance data processing:</b> File Merger is designed to process large amounts of data quickly and efficiently. This means that users can merge large files without worrying about long wait times or performance issues.</li>
        <li><b>Customizable merge options:</b> File Merger allows users to customize the merge process by specifying which columns to include in the final output file. This feature gives users greater control over the final output file and ensures that only the data they need is included.</li>
        <li><b>No software installation required:</b> File Merger is a web-based tool, which means that users do not need to download or install any software on their computer. This makes it easy to use the website from any device with an internet connection.</li>
      </ul>
    </div>
    <h2>System Requirements</h2>
    <p>File Merger can be accessed from any device with an internet connection and a web browser.</p>  
    <h2>Conclusion</h2>
    <p>File Merger is an essential tool for anyone who needs to merge data from multiple sources into a single, comprehensive file. With its powerful features, simple user interface, and customizable options, File Merger makes it easy to merge CSV and text files based on a common column. Best of all, users can access this powerful tool from any device with an internet connection and a web browser, making it a convenient and efficient solution for merging data.</p>
  
  </div>
  
  
  <!-- footer -->
  <footer>
    <div class="container " style="bottom:0;">
      <div class="row">
        <div class="col-md-12">
          <hr>
          <p class="text-center" >&copy; 2023 File Merger. All rights reserved. </p>
        </div>
      </div>
    </div>
  </footer>
  <script src="/js/script.js"></script>

</body>
</html>