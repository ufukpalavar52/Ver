

package com.service;

import javax.jws.WebService;

import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.*;
import org.hibernate.Criteria;

import org.hibernate.SQLQuery;


@WebService(endpointInterface="com.service.CalOgrenciservice")
@SOAPBinding(style=Style.RPC)
public class CalOgrenciServiceImp implements CalOgrenciservice{
    	
    @Override
    public String ogrenciSql(String no) {
        Session sess = null;
        Transaction tx = null;
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        sess = sessionFactory.openSession();
        try {
             
           
            tx = sess.beginTransaction();
            
            String sql = "Select ad,soyad,bolumAd,fakulteAd  from togrenci,tbolum,tfakulte where ogrenciID='"+no+"' and togrenci.bolumID = tbolum.bolumID and tbolum.fakulteID = tfakulte.fakulteID";
            SQLQuery query = sess.createSQLQuery(sql);
            query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
            List result = query.list();
            for(Object object : result) {
               
                Map row = (Map)object;
                return "<tr><td>Adı</td>\n"+
		        "<td>Soyadı</td>\n"+
			"<td>Bölümü</td>\n"+
		        "<td>Fakülte</td></tr>\n"
		     + "<tr><td>"+row.get("ad")+"</td>\n"+
		       "<td>"+row.get("soyad")+"</td>\n"+
		       "<td>"+row.get("bolumAd")+"</td>\n"+
		       "<td>"+row.get("fakulteAd")+"</td></tr>";
                
            }    
        } catch (HibernateException ex) {
            System.out.println(ex);
        }
        
        return "Böyle bir öğrenci yoktur "; 
    }

    
    
}
