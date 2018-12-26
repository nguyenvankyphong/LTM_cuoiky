<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tour Management</title>
<link rel="stylesheet" href="templates/css/bootstrap.min.css">
<link rel="stylesheet" href="templates/css/page.css">
</head>
<body>
	<div class="container" style = "background-image: url('templates/img/bg-dn.jpg'); height: 600px; min-width: 100%">
		<div class="row">
			<div class="col-md-4 col-centered login-form border-primary">
				<form action="<%=request.getContextPath()%>/dang-nhap" method="POST">
					<h1 class="text-white" style= "font-weight: bold">Log in</h1>
					<fieldset>
						<legend></legend>
						<div class="form-group">
							<label for="username">Email</label> <input
								type="text" class="form-control" id="username" name="username"
								aria-describedby="emailHelp">
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input
								type="password" class="form-control" id="password" name="password">
						</div>
						<button type="submit" class="btn btn-dark btn-login">Log in</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>