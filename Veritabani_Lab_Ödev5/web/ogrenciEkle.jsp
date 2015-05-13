<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.SQLQuery"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("ISO-8859-9");
response.setCharacterEncoding("ISO-8859-9");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Öğrenci Ekleme</title>
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="dist/css/signin.css">
</head>
<body>
<div class="container">
    <div class = "row">
        <div class = "span12">
            <h2>Öğrenci Ekleme</h2>
            <form class="form-horizontal" action="ogrenciEkle" method="POST">
            <div class="form-group">
                 <label for="name" class="col-sm-2 control-label">Öğrenci No</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" Maxlength="8" name="ogrenciNo" placeholder="Öğrenci No giriniz.." required autofocus/>
                    </div>   
            </div>
            <div class="form-group">
                 <label for="name" class="col-sm-2 control-label">Ad</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control"  name="ad" placeholder="Öğrenci Adını giriniz.." required autofocus/>
                    </div>   
            </div>    
            <div class="form-group">
                 <label for="name" class="col-sm-2 control-label">Soyad</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control"  name="soyad" placeholder="Öğrenci Soyadını giriniz." required autofocus/>
                    </div>   
            </div>
         <%
         
         Session sess = null;
         Transaction tx = null;
         SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
         sess = sessionFactory.openSession();
         
        try {
             
           
            tx = sess.beginTransaction();
            
            String sql = "Select *from tbolum";
            SQLQuery query = sess.createSQLQuery(sql);
            query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
            List result = query.list();
            
    %>
                
            <div class="form-group">
                 <label for="name" class="col-sm-2 control-label">Soyad</label>
                    <div class="col-sm-5">
                        <select class="form-control" name="bolum">
                            <%
                                for(Object object : result) {
               
                                    Map row = (Map)object;
                            %>
                            <option value="<%=row.get("bolumID")%>"><%=row.get("bolumAd")%></option>
                        <%}%>    
                        </select>
                        
                   </div>   
            </div>
         <%  tx.commit();
                } catch (Exception ex) {
                out.println(ex);
      }%>              
                
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
