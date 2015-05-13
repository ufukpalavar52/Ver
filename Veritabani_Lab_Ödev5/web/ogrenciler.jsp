<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.SQLQuery"%>
<%@page import="com.ogrenci.Ogrenci"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.*"%>
<%@page import="org.hibernate.Query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Öğrenci Sorgusu</title>
    <link rel="stylesheet" type="text/css" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="dist/css/signin.css"> 
</head>
<body >
<div class="container">
    <div class="row">
        <div class="col-md-12">
<center>
    <h2>Öğrenci Sorgusu</h2><br/><br/>
    <table class="table table-bordered table-condensed table-hover">
        <tr class="success">
            <td><center>Öğrenci Ad</center></td>
            <td><center>Öğrenci Soyad</center></td>
            
            <td><center>Bölümü</center></td>
            <td><center>Fakültesi</center></td>
            
             
           
    <%
         String no = request.getParameter("ogrenciNo");
         Session sess = null;
         Transaction tx = null;
         SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
         sess = sessionFactory.openSession();
         
        try {
             
           
            tx = sess.beginTransaction();
            
            String sql = "Select ad,soyad,bolumAd,fakulteAd  from togrenci,tbolum,tfakulte where " +
                    "ogrenciID='"+no+"' and togrenci.bolumID = tbolum.bolumID and tbolum.fakulteID = tfakulte.fakulteID";
            SQLQuery query = sess.createSQLQuery(sql);
            query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
            List result = query.list();
            
    %>
    </tr>
    <tr style="background-color: #ffffff">
           
    <%
            for(Object object : result) {
               
                Map row = (Map)object;
               
    %>
    
    <td><center><%=row.get("ad")%></center></td>
    <td><center><%=row.get("soyad")%></center></td>
    <td><center><%=row.get("bolumAd")%></center></td>
    <td><center><%=row.get("fakulteAd")%></center></td>
                  
    
    
      <% } %>
      </tr>
      <% tx.commit();
        } catch (Exception ex) {
           out.println(ex);
      }%>
    
    </table>
    </div>
    </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="dist/js/bootstrap.min.js"></script>
  <script src="dist/js/jquery.min.js"></script>  
</div>   
</body>
</html>
