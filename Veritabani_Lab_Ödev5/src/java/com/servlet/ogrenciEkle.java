/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.ogrenci.Ogrenci;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ogrenciEkle extends HttpServlet {

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

        String ogrenciNo = request.getParameter("ogrenciNo");
        String ad = request.getParameter("ad");
        String soyad = request.getParameter("soyad");
        int bolumId = Integer.valueOf(request.getParameter("bolum"));
        
        try {
            Session session = null;
            SessionFactory sessionFactory;
            sessionFactory = new Configuration().configure().buildSessionFactory();
            session = sessionFactory.openSession();
            Transaction tr = session.beginTransaction();
            Ogrenci ogrenci = new Ogrenci();
            ogrenci.setOgrenciId(ogrenciNo);
            ogrenci.setAd(ad);
            ogrenci.setSoyad(soyad);
            ogrenci.setBolumId(bolumId);
            session.save(ogrenci);
            tr.commit();
            response.sendRedirect("kayitBasarili.jsp");
            out.println("Kaydınız Eklendi");
        } catch (HibernateException ex) {
            out.println(ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
