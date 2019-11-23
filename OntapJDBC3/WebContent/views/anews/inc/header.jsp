<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>VinaENTER EDU - Đã học là làm được</title>
	<meta name="description" content="VinaENTER EDU đào tạo lập trình viên chuyên nghiệp - Đã học là làm được">
	<meta name="keywords" content="dao tao chuyên sâu lap trinh php, java">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<link href="<%=request.getContextPath()%>/views/anews/css/style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/views/anews/js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/libraries/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/libraries/ckfinder/ckfinder.js"></script>
</head>
<body>
	<div class="wrapper">
		<!-- begin header -->
		<div id="header">
			<div class="header-left fl">
				<a href="<%=request.getContextPath() %>/anews/index" title=""><img src="<%=request.getContextPath()%>/views/anews/images/logo_edu.png" alt="" /></a>
			</div>
			<div class="header-right fr">
				<a href="<%=request.getContextPath() %>/anews/index" title=""><img src="<%=request.getContextPath()%>/views/anews/images/banner.jpg" alt="" /></a>
			</div>
			<div class="clr"></div>
		</div>
		<!-- end header -->
		
		<!-- begin menu -->
		<div id="menu">
			<ul>
				<li class="active"><a href="<%=request.getContextPath() %>/anews/index" title="">Trang chủ</a></li>
				<li class="active"><a href="<%=request.getContextPath() %>/anews/load-write-page" title="">Viết bài</a></li>
			</ul>
			<div class="clr"></div>
		</div>
		<!-- end menu -->
		
		<!-- end content -->
		<div id="content">