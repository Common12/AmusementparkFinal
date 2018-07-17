/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author s choudhry
 */@Entity
 @Table(name="parkDetails")
public class Park {
    @Id  
     @GeneratedValue(strategy=GenerationType.AUTO)
       private int id;
     @Column
     private String parkname;
     @Column
     private String location;
     @Column
     private String city;
     @Column
     private String email;
     @Column
     private String phone;
   @Column
   String ctime;
     @Column
          String otime;
     @Column
    String sctime;
     @Column
     String sotime;
     @Column
     private String afees;
     @Column
     private String cfees;
  @Column
 private String imagename;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getParkname() {
        return parkname;
    }

    public void setParkname(String parkname) {
        this.parkname = parkname;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCtime() {
        return ctime;
    }

    public void setCtime(String ctime) {
        this.ctime = ctime;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public String getSctime() {
        return sctime;
    }

    public void setSctime(String sctime) {
        this.sctime = sctime;
    }

    public String getSotime() {
        return sotime;
    }

    public void setSotime(String sotime) {
        this.sotime = sotime;
    }

    public String getAfees() {
        return afees;
    }

    public void setAfees(String afees) {
        this.afees = afees;
    }

    public String getCfees() {
        return cfees;
    }

    public void setCfees(String cfees) {
        this.cfees = cfees;
    }

    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

}
