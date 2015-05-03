package com.urun;

import java.sql.DriverManager;
import java.sql.SQLException;

import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

@WebService(endpointInterface="com.urun.CalUrunservice")
@SOAPBinding(style=Style.RPC)
public class CalUrunServiceImp implements CalUrunservice{

	@Override
	public String urun(String x)  {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		try {
			Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dburun","root","12345");
			String sorgu = "Select urunAd ,fiyat,ozellikler,kategoriad from turunler,tkategori where urunID ='"+x+"' and turunler.kategoriID = tkategori.kategoriID";
			Statement st =(Statement) conn.createStatement();
			ResultSet rs = (ResultSet)st.executeQuery(sorgu);
			if(rs.next()) {
				return  "<tr><td>UrunAd</td>\n"+
						"<td>Fiyat</td>\n"+
						"<td>Ozellikleri</td>\n"+
						"<td>Kategori</td></tr>\n"
						+ "<tr><td>"+rs.getString("urunAd")+"</td>\n"+
						"<td>"+rs.getString("fiyat")+"</td>\n"+
						"<td>"+rs.getString("ozellikler")+"</td>\n"+
						"<td>"+rs.getString("kategoriad")+"</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
