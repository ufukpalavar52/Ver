

<%@page import="com.service.CalOgrenciservice"%>
<%@page import="java.net.URL" %>
<%@page import="javax.xml.namespace.QName" %>
<%@page import="javax.xml.ws.Service" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="dist/css/signin.css" rel="stylesheet" type="text/css" />
    <title>Öğrenci Sorgu</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <center>
            <h2>Öğrenci Sorgulama</h2>
    <%
 	URL url = new URL("http://localhost:8080/ogrenci?wsdl");
 	QName qname = new QName("http://service.com/","CalOgrenciServiceImpService");
 	Service service = Service.create(url, qname);
 	CalOgrenciservice calService = service.getPort(CalOgrenciservice.class); 
%>
<table class="table table-striped table-bordered table-hover">
<%  	
 	out.println(calService.ogrenciSql(request.getParameter("ogrenciNo")));
%>
</table>
            </center>
        </div>
        </div>
        </div>
</body>
</html>
