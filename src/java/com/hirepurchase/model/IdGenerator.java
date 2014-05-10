/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "idgenerator")
public class IdGenerator implements Serializable {
    @EmbeddedId
    protected IdGeneratorPK idgeneratorPK;
    @Column(name = "index")
    private Integer index;

    public IdGenerator() {
    }

    public IdGenerator(IdGeneratorPK idgeneratorPK) {
        this.idgeneratorPK = idgeneratorPK;
    }

    public IdGenerator(String keyword, String charcode) {
        this.idgeneratorPK = new IdGeneratorPK(keyword, charcode);
    }

    public IdGeneratorPK getIdgeneratorPK() {
        return idgeneratorPK;
    }

    public void setIdgeneratorPK(IdGeneratorPK idgeneratorPK) {
        this.idgeneratorPK = idgeneratorPK;
    }

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idgeneratorPK != null ? idgeneratorPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IdGenerator)) {
            return false;
        }
        IdGenerator other = (IdGenerator) object;
        if ((this.idgeneratorPK == null && other.idgeneratorPK != null) || (this.idgeneratorPK != null && !this.idgeneratorPK.equals(other.idgeneratorPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.Idgenerator[ idgeneratorPK=" + idgeneratorPK + " ]";
    }
    
}
