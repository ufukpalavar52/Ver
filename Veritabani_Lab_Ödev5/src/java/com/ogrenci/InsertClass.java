
package com.ogrenci;
import org.hibernate.Session;
import org.hibernate.Transaction; 
import com.ogrenci.Ogrenci;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class InsertClass {
    public static void main(String[] args) throws Exception {
        Session session = null;
        SessionFactory sessionFactory;
        sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        Transaction tr = session.beginTransaction();
        Ogrenci emp = new Ogrenci();
        emp.setOgrenciId("12060719");
        emp.setAd("Veli");
        emp.setSoyad("Deli");
        
        emp.setBolumId(1);
        session.save(emp);
        tr.commit();
        System.out.println("Başarıyla eklendi");
    }
    }

