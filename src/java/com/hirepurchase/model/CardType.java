/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "cardtype")
public class CardType implements Serializable {
    @EmbeddedId
    protected CardTypePK cardTypePK; 
    @Column(name = "cardtypename")
    private String cardtypename;

    public CardType() {
    }

    public CardType(CardTypePK cardTypePK) {
        this.cardTypePK = cardTypePK;
    }
    
    public CardType(String cardtypeid) {
        this.cardTypePK = new CardTypePK(cardtypeid);
    }

    public CardTypePK getCardTypePK() {
        return cardTypePK;
    }

    /**
     *
     * @param cardTypePK
     */
    public void setCardTypePK(CardTypePK cardTypePK) {
        this.cardTypePK = cardTypePK;
    }
    
    public String getCardtypename() {
        return cardtypename;
    }

    public void setCardtypename(String cardtypename) {
        this.cardtypename = cardtypename;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cardTypePK != null ? cardTypePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CardType)) {
            return false;
        }
        CardType other = (CardType) object;
        if ((this.cardTypePK == null && other.cardTypePK != null) || (this.cardTypePK != null && !this.cardTypePK.equals(other.cardTypePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.CardType[ cardTypePK=" + cardTypePK + " ]";
    }
}
