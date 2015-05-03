<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="dist/css/signin.css" rel="stylesheet" type="text/css" />
<title>Ürün Göster</title>
</head>
<body style="background-color: white">
<div class="container">
<div class="navbar navbar-default" style="background-color:silver  ;">

			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">AnaSayfa</a></li>
					<li><a href="#">Ürünleriniz</a></li>
					<li><a href="#">Hediyelik Eşyalar</a></li>

				</ul>

			</div>
</div>
	<form action="urun.jsp" method="post" class="form-signin">
	<table>
		<tr>
			<td>Urun ID:</td>
			<td><input type="number" min="1" name="urunId" required autofocus></td>

		</tr>
		<tr>
			<td><input type="submit" value="Göster"></td>
		</tr>

	</table>
	</form>
</div>
</body>
</html>