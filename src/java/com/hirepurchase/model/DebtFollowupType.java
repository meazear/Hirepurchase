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
@Table(name = "debtfollowuptype")
public class DebtFollowupType implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "debtfollowuptypeid")
    private String debtfollowuptypeid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "debtfollowuptypename")
    private String debtfollowuptypename;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "debtfollowuprate")
    private BigDecimal debtfollowuprate;

    public DebtFollowupType() {
    }

    public DebtFollowupType(String debtfollowuptypeid) {
        this.debtfollowuptypeid = debtfollowuptypeid;
    }

    public DebtFollowupType(String debtfollowuptypeid, String debtfollowuptypename, BigDecimal debtfollowuprate) {
        this.debtfollowuptypeid = debtfollowuptypeid;
        this.debtfollowuptypename = debtfollowuptypename;
        this.debtfollowuprate = debtfollowuprate;
    }

    public String getDebtfollowuptypeid() {
        return debtfollowuptypeid;
    }

    public void setDebtfollowuptypeid(String debtfollowuptypeid) {
        this.debtfollowuptypeid = debtfollowuptypeid;
    }

    public String getDebtfollowuptypename() {
        return debtfollowuptypename;
    }

    public void setDebtfollowuptypename(String debtfollowuptypename) {
        this.debtfollowuptypename = debtfollowuptypename;
    }

    public BigDecimal getDebtfollowuprate() {
        return debtfollowuprate;
    }

    public void setDebtfollowuprate(BigDecimal debtfollowuprate) {
        this.debtfollowuprate = debtfollowuprate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (debtfollowuptypeid != null ? debtfollowuptypeid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DebtFollowupType)) {
            return false;
        }
        DebtFollowupType other = (DebtFollowupType) object;
        if ((this.debtfollowuptypeid == null && other.debtfollowuptypeid != null) || (this.debtfollowuptypeid != null && !this.debtfollowuptypeid.equals(other.debtfollowuptypeid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.DebtFollowupType[ debtfollowuptypeid=" + debtfollowuptypeid + " ]";
    }
    
}
