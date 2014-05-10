/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "userprofile")
//@XmlRootElement
//@NamedQueries({
//    @NamedQuery(name = "UserProfile.findAll", query = "SELECT u FROM UserProfile u"),
//    @NamedQuery(name = "UserProfile.findByUsername", query = "SELECT u FROM UserProfile u WHERE u.username = :username"),
//    @NamedQuery(name = "UserProfile.findByPassword", query = "SELECT u FROM UserProfile u WHERE u.password = :password"),
//    @NamedQuery(name = "UserProfile.findByTitle", query = "SELECT u FROM UserProfile u WHERE u.title = :title"),
//    @NamedQuery(name = "UserProfile.findByFname", query = "SELECT u FROM UserProfile u WHERE u.fname = :fname"),
//    @NamedQuery(name = "UserProfile.findBySname", query = "SELECT u FROM UserProfile u WHERE u.sname = :sname"),
//    @NamedQuery(name = "UserProfile.findByDepartment", query = "SELECT u FROM UserProfile u WHERE u.department = :department"),
//    @NamedQuery(name = "UserProfile.findByPosition", query = "SELECT u FROM UserProfile u WHERE u.position = :position"),
//    @NamedQuery(name = "UserProfile.findByContactaddr", query = "SELECT u FROM UserProfile u WHERE u.contactaddr = :contactaddr"),
//    @NamedQuery(name = "UserProfile.findByEmail", query = "SELECT u FROM UserProfile u WHERE u.email = :email"),
//    @NamedQuery(name = "UserProfile.findByMobileno", query = "SELECT u FROM UserProfile u WHERE u.mobileno = :mobileno"),
//    @NamedQuery(name = "UserProfile.findByHomeno", query = "SELECT u FROM UserProfile u WHERE u.homeno = :homeno"),
//    @NamedQuery(name = "UserProfile.findByPrivilege", query = "SELECT u FROM UserProfile u WHERE u.privilege = :privilege"),
//    @NamedQuery(name = "UserProfile.findByUserattachedphoto", query = "SELECT u FROM UserProfile u WHERE u.userattachedphoto = :userattachedphoto"),
//    @NamedQuery(name = "UserProfile.findByUsercrtby", query = "SELECT u FROM UserProfile u WHERE u.usercrtby = :usercrtby"),
//    @NamedQuery(name = "UserProfile.findByUsercrtdttm", query = "SELECT u FROM UserProfile u WHERE u.usercrtdttm = :usercrtdttm"),
//    @NamedQuery(name = "UserProfile.findByUserupdby", query = "SELECT u FROM UserProfile u WHERE u.userupdby = :userupdby"),
//    @NamedQuery(name = "UserProfile.findByUserupddttm", query = "SELECT u FROM UserProfile u WHERE u.userupddttm = :userupddttm")})
public class UserProfile implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "title")
    private String title;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "fname")
    private String fname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "sname")
    private String sname;
    @Size(max = 50)
    @Column(name = "department")
    private String department;
    @Size(max = 50)
    @Column(name = "position")
    private String position;
    @Size(max = 100)
    @Column(name = "contactaddr")
    private String contactaddr;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 50)
    @Column(name = "email")
    private String email;
    @Size(max = 15)
    @Column(name = "mobileno")
    private String mobileno;
    @Size(max = 15)
    @Column(name = "homeno")
    private String homeno;
    @Column(name = "privilege")
    private Character privilege;
    @Size(max = 150)
    @Column(name = "userattachedphoto")
    private String userattachedphoto;
    @Size(max = 15)
    @Column(name = "usercrtby")
    private String usercrtby;
    @Column(name = "usercrtdttm")
    @Temporal(TemporalType.TIMESTAMP)
    private Date usercrtdttm;
    @Size(max = 15)
    @Column(name = "userupdby")
    private String userupdby;
    @Column(name = "userupddttm")
    @Temporal(TemporalType.TIMESTAMP)
    private Date userupddttm;

    public UserProfile() {
    }

    public UserProfile(String username) {
        this.username = username;
    }

    public UserProfile(String username, String password, String title, String fname, String sname) {
        this.username = username;
        this.password = password;
        this.title = title;
        this.fname = fname;
        this.sname = sname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getContactaddr() {
        return contactaddr;
    }

    public void setContactaddr(String contactaddr) {
        this.contactaddr = contactaddr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobileno() {
        return mobileno;
    }

    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }

    public String getHomeno() {
        return homeno;
    }

    public void setHomeno(String homeno) {
        this.homeno = homeno;
    }

    public Character getPrivilege() {
        return privilege;
    }

    public void setPrivilege(Character privilege) {
        this.privilege = privilege;
    }

    public String getUserattachedphoto() {
        return userattachedphoto;
    }

    public void setUserattachedphoto(String userattachedphoto) {
        this.userattachedphoto = userattachedphoto;
    }

    public String getUsercrtby() {
        return usercrtby;
    }

    public void setUsercrtby(String usercrtby) {
        this.usercrtby = usercrtby;
    }

    public Date getUsercrtdttm() {
        return usercrtdttm;
    }

    public void setUsercrtdttm(Date usercrtdttm) {
        this.usercrtdttm = usercrtdttm;
    }

    public String getUserupdby() {
        return userupdby;
    }

    public void setUserupdby(String userupdby) {
        this.userupdby = userupdby;
    }

    public Date getUserupddttm() {
        return userupddttm;
    }

    public void setUserupddttm(Date userupddttm) {
        this.userupddttm = userupddttm;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (username != null ? username.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserProfile)) {
            return false;
        }
        UserProfile other = (UserProfile) object;
        if ((this.username == null && other.username != null) || (this.username != null && !this.username.equals(other.username))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hirepurchase.model.UserProfile[ username=" + username + " ]";
    }
    
}
