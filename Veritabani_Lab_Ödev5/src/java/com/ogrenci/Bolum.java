
package com.ogrenci;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbolum")
public class Bolum {
    
    private int bolumId;
    private String bolumAd;
    private int fakulteId;
    
    public void setBolumId(int bolumId) {
        this.bolumId = bolumId;
    }
    
    @Id
    @Column(name = "bolumID", unique = true)
    public int getBolumId() {
        return this.bolumId;
    }
    
    public void setBolumAd(String bolumAd) {
        this.bolumAd = bolumAd;
    }
    
    @Column(name = "bolumAd", length = 45)
    public String getBolumAd() {
        return this.bolumAd;
    }
    
    public void setFakulteId(int fakulteId) {
        this.fakulteId = fakulteId;
    }
    
    @Column(name = "fakulteID")
    public int getFakulteId() {
        return this.fakulteId;
    }
    
}
