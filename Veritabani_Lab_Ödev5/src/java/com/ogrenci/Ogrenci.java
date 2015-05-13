package com.ogrenci;
        
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "togrenci")
public class Ogrenci {
    private  String ogrenciId = "";
    private  String ad = "";
    private  String soyad = "";
    private  int bolumId = 0;
    
    public void setOgrenciId(String ogrenciId) {
        this.ogrenciId = ogrenciId;
        
    }
    
    @Id
    @Column(name = "ogrenciID", unique = true)
    public String getOgrenciId() {
        return this.ogrenciId;
    }
    
    public void setAd(String ad) {
        this.ad =ad;
    }
    
   @Column(name = "ad", length = 45) 
   public String getAd() {
       return this.ad;
   }
   
   public void setSoyad(String soyad) {
       this.soyad = soyad;
   }
   
   @Column(name = "soyad", length = 45 )
   public String getSoyad() {
       return this.soyad;
   }
   
   public void setBolumId(int bolumId) {
       this.bolumId = bolumId; 
   }
   
   @Column(name = "bolumId")
   public int getBolumId() {
       return this.bolumId;
   }
    
}
