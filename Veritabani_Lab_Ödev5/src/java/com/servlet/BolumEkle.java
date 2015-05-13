
package com.servlet;

import com.ogrenci.Bolum;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class BolumEkle extends HttpServlet {


  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String bolumAd = request.getParameter("bolumAd");
        int fakulteId = Integer.valueOf(request.getParameter("fakulteId"));
        
        try {
            Session session = null;
            SessionFactory sessionFactory;
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            Transaction tr = session.beginTransaction();
            Bolum bolum = new Bolum();
            bolum.setBolumAd(bolumAd);
            bolum.setFakulteId(fakulteId);
            session.save(bolum);
            tr.commit();
            response.sendRedirect("kayitBasarili.jsp");
            out.println("Kaydınız Eklendi");
            
        }  catch (HibernateException ex) {
            out.println(ex);
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
