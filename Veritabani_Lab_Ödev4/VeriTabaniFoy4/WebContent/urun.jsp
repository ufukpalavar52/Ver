<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.net.URL" %>
<%@page import="javax.xml.namespace.QName" %>
<%@page import="javax.xml.ws.Service" %>
 <%@page import="com.urun.CalUrunservice" %>   
<!DOCTYPE html>
<html>
<head>
<link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="dist/css/signin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Urun</title>
</head>
<body style="background-color: white">
<div class="container">
<div class="navbar navbar-default" >

			<div class="navbar-collapse collapse" style="background-color: silver;">
				<ul class="nav navbar-nav">
					<li><a href="#">AnaSayfa</a></li>
					<li><a href="#">Ürünleriniz</a></li>
					<li><a href="#">Hediyelik Eşyalar</a></li>

				</ul>
			</div>
</div>
<%
 	URL url = new URL("http://localhost:8080/urun?wsdl");
 	QName qname = new QName("http://urun.com/","CalUrunServiceImpService");
 	Service service = Service.create(url, qname);
 	CalUrunservice calService = service.getPort(CalUrunservice.class); 
%>
<table class="table table-striped table-bordered table-hover">
<%  	
 	out.println(calService.urun(request.getParameter("urunId")));
%>
</table>

</div>
</body>
</html>