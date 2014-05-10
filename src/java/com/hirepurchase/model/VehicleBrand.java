/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "vehiclebrand")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VehicleBrand.findAll", query = "SELECT v FROM VehicleBrand v"),
    @NamedQuery(name = "VehicleBrand.findByVehiclebrandid", query = "SELECT v FROM VehicleBrand v WHERE v.vehiclebrandid = :vehiclebrandid"),
    @NamedQuery(name = "VehicleBrand.findByVehicletypeid", query = "SELECT v FROM VehicleBrand v WHERE v.vehicletypeid = :vehicletypeid"),
    @NamedQuery(name = "VehicleBrand.findByVehiclebrandname", query = "SELECT v FROM VehicleBrand v WHERE v.vehiclebrandname = :vehiclebrandname")})
public class VehicleBrand implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "vehiclebrandid")
    private String vehiclebrandid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "vehicletypeid")
    private String vehicletypeid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "vehiclebrandname")
    private String vehiclebrandname;

    public VehicleBrand() {
    }

    public VehicleBrand(String vehiclebrandid) {
        this.vehiclebrandid = vehiclebrandid;
    }

    public VehicleBrand(String vehiclebrandid, String vehicletypeid, String vehiclebrandname) {
        this.vehiclebrandid = vehiclebrandid;
        this.vehicletypeid = vehicletypeid;
        this.vehiclebrandname = vehiclebrandname;
    }

    public String getVehiclebrandid() {
        return vehiclebrandid;
    }

    public void setVehiclebrandid(String vehiclebrandid) {
        this.vehiclebrandid = vehiclebrandid;
    }

    public String getVehicletypeid() {
        return vehicletypeid;
    }

    public void setVehicletypeid(String vehicletypeid) {
        this.vehicletypeid = vehicletypeid;
    }

    public String getVehiclebrandname() {
        return vehiclebrandname;
    }

    public void setVehiclebrandname(String vehiclebrandname) {
        this.vehiclebrandname = vehiclebrandname;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vehiclebrandid != null ? vehiclebrandid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VehicleBrand)) {
            return false;
        }
        VehicleBrand other = (VehicleBrand) object;
        if ((this.vehiclebrandid == null && other.vehiclebrandid != null) || (this.vehiclebrandid != null && !this.vehiclebrandid.equals(other.vehiclebrandid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.VehicleBrand[ vehiclebrandid=" + vehiclebrandid + " ]";
    }
    
}
