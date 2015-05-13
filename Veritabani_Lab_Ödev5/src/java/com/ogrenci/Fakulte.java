
package com.ogrenci;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tfakulte")
public class Fakulte {
    
    private int fakulteId;
    private String fakulteAd;
    
    public void setFakulteId(int fakulteId) {
        this.fakulteId = fakulteId;
    }
   
    @Id
    @Column(name = "fakulteID", unique = true)
    public int getFakulteId() {
        return this.fakulteId;
    }
    
    public void setFakulteAd(String fakulteAd) {
        this.fakulteAd = fakulteAd;
    }
    @Column(name = "fakulteAd", length = 45)
    public String getFakulteAd() {
        return this.fakulteAd;
    }

}
