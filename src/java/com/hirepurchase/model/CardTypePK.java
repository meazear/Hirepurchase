/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Administrator
 */
@Embeddable
public class CardTypePK implements Serializable{
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "cardtypeid")
    private String cardtypeid; 
    
    public CardTypePK() {
    }

    public CardTypePK(String cardtypeid) {
        this.cardtypeid = cardtypeid;
    }
    
    public String getCardtypeid() {
        return cardtypeid;
    }

    public void setCardtypeid(String cardtypeid) {
        this.cardtypeid = cardtypeid;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cardtypeid != null ? cardtypeid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CardTypePK)) {
            return false;
        }
        CardTypePK other = (CardTypePK) object;
        if ((this.cardtypeid == null && other.cardtypeid != null) || (this.cardtypeid != null && !this.cardtypeid.equals(other.cardtypeid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.IdgeneratorPK[ cardtypeid=" + cardtypeid+ " ]";
    }
}
