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
@Table(name = "vehicletype")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VehicleType.findAll", query = "SELECT v FROM VehicleType v"),
    @NamedQuery(name = "VehicleType.findByVehicletypeid", query = "SELECT v FROM VehicleType v WHERE v.vehicletypeid = :vehicletypeid"),
    @NamedQuery(name = "VehicleType.findByVehicletypename", query = "SELECT v FROM VehicleType v WHERE v.vehicletypename = :vehicletypename")})
public class VehicleType implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "vehicletypeid")
    private String vehicletypeid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "vehicletypename")
    private String vehicletypename;

    public VehicleType() {
    }

    public VehicleType(String vehicletypeid) {
        this.vehicletypeid = vehicletypeid;
    }

    public VehicleType(String vehicletypeid, String vehicletypename) {
        this.vehicletypeid = vehicletypeid;
        this.vehicletypename = vehicletypename;
    }

    public String getVehicletypeid() {
        return vehicletypeid;
    }

    public void setVehicletypeid(String vehicletypeid) {
        this.vehicletypeid = vehicletypeid;
    }

    public String getVehicletypename() {
        return vehicletypename;
    }

    public void setVehicletypename(String vehicletypename) {
        this.vehicletypename = vehicletypename;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vehicletypeid != null ? vehicletypeid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VehicleType)) {
            return false;
        }
        VehicleType other = (VehicleType) object;
        if ((this.vehicletypeid == null && other.vehicletypeid != null) || (this.vehicletypeid != null && !this.vehicletypeid.equals(other.vehicletypeid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.VehicleType[ vehicletypeid=" + vehicletypeid + " ]";
    }
    
}
