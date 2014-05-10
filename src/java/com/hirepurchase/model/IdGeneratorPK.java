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
public class IdGeneratorPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "keyword")
    private String keyword;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "charcode")
    private String charcode;

    public IdGeneratorPK() {
    }

    public IdGeneratorPK(String keyword, String charcode) {
        this.keyword = keyword;
        this.charcode = charcode;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getCharcode() {
        return charcode;
    }

    public void setCharcode(String charcode) {
        this.charcode = charcode;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (keyword != null ? keyword.hashCode() : 0);
        hash += (charcode != null ? charcode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IdGeneratorPK)) {
            return false;
        }
        IdGeneratorPK other = (IdGeneratorPK) object;
        if ((this.keyword == null && other.keyword != null) || (this.keyword != null && !this.keyword.equals(other.keyword))) {
            return false;
        }
        if ((this.charcode == null && other.charcode != null) || (this.charcode != null && !this.charcode.equals(other.charcode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.IdgeneratorPK[ keyword=" + keyword + ", charcode=" + charcode + " ]";
    }
    
}
