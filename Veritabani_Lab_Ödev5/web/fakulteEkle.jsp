
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("ISO-8859-9");
response.setCharacterEncoding("ISO-8859-9");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Fakülte Ekleme</title>
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="dist/css/signin.css">
</head>
<body>
<div class="container">
    <div class = "row">
        <div class = "span12">
            <h2>Fakülte Ekleme</h2>
            <form class="form-horizontal" action="FakulteEkle" method="POST">
            
            <div class="form-group">
                 <label for="name" class="col-sm-2 control-label">Fakülte Adı</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control"  name="fakulteAd" placeholder="Fakülte Adını giriniz.." required autofocus/>
                    </div>   
            </div>    
            
                
                
                
            <div class="form-group">
                 <div class="col-sm-offset-2 col-sm-5">
                       <button type="submit" class="btn btn-primary">Ekle</button>&nbsp;&nbsp;
                       <button type="reset" class="btn btn-default">Temizle</button>
                 </div>   
           </div>     
            
            
            </form>
            
            
            
        </div>
        
    </div>
    
</div>    
    
    
</body>
</html>
