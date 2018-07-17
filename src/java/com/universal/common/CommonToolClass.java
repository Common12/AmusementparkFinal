package com.universal.common;




import org.hibernate.Session;
import org.hibernate.cfg.Configuration;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *

 */
public class CommonToolClass {
       public static Session getSession(){
        return new Configuration().configure().buildSessionFactory().openSession();
 
}
}