/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.model;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
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
@Table(name = "finetype")
public class FineType implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull    
    @Column(name = "finetypeid")
    private String finetypeid;
    @Basic(optional = false)
    @NotNull    
    @Column(name = "finetypename")
    private String finetypename;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "finerate")
    private BigDecimal finerate;
    @Basic(optional = false)
    @NotNull    
    @Column(name = "finerateunit")
    private String finerateunit;

    public FineType() {
    }

    public FineType(String finetypeid) {
        this.finetypeid = finetypeid;
    }

    public FineType(String finetypeid, String finetypename, BigDecimal finerate, String finerateunit) {
        this.finetypeid = finetypeid;
        this.finetypename = finetypename;
        this.finerate = finerate;
        this.finerateunit = finerateunit;
    }

    public String getFinetypeid() {
        return finetypeid;
    }

    public void setFinetypeid(String finetypeid) {
        this.finetypeid = finetypeid;
    }

    public String getFinetypename() {
        return finetypename;
    }

    public void setFinetypename(String finetypename) {
        this.finetypename = finetypename;
    }

    public BigDecimal getFinerate() {
        return finerate;
    }

    public void setFinerate(BigDecimal finerate) {
        this.finerate = finerate;
    }

    public String getFinerateunit() {
        return finerateunit;
    }

    public void setFinerateunit(String finerateunit) {
        this.finerateunit = finerateunit;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (finetypeid != null ? finetypeid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FineType)) {
            return false;
        }
        FineType other = (FineType) object;
        if ((this.finetypeid == null && other.finetypeid != null) || (this.finetypeid != null && !this.finetypeid.equals(other.finetypeid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.FineType[ finetypeid=" + finetypeid + " ]";
    }
    
}
