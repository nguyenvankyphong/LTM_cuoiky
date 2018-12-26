<%@page import="model.bean.BaiHat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="stylesheet" href="templates/css/bootstrap.min.css">
<link rel="stylesheet" href="templates/css/page.css">
<title>Edit a tour</title>
</head>
<body>
	<%
		BaiHat item = (BaiHat) request.getAttribute("item");
	%>

	<div class="container">
		<jsp:include page="templates/inc/headerbar.jsp"></jsp:include>
		<div class="page">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/bai-hat">Tour Management</a></li>
				<li class="breadcrumb-item active">Edit name</li>
			</ol>
		</div>
		<form action="<%=request.getContextPath()%>/chinh-sua-bai-hat" method="post">
			<fieldset>
				Edit name
				<div class="form-group">
					<label for="ten">Tour name</label> 
					<input type="hidden" name="ma" value="<%=item.getMa()%>">
					<input type="text"
						class="form-control" id="ten" name="ten"
						value="<%=item.getTen()%>"> 
				</div>
				<button type="submit" class="btn btn-dark">Save</button>
			</fieldset>
		</form>
	</div>
</body>
</html>