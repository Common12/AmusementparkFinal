package com.universal.dao;

import com.universal.common.CommonToolClass;
import com.universal.dto.Park;
import com.universal.dto.User;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 */
public class UserDao {

    
    
    
    
    
    public static ArrayList<User> getUserList(){
        ArrayList<User> userList=new ArrayList<>();
         Session session = CommonToolClass.getSession();
        Query query = session.createQuery("from User");
        List list = query.list();
        for (Object object : list) {
            User user=(User)object;
        userList.add(user);
        }
        return userList;
    
}
       
    public static void addUserRecord(User user) {
       Session session = CommonToolClass.getSession();
         session.save(user);
        session.beginTransaction().commit();
       }


 public static boolean isUserValid(User user) {
        boolean flag=false;
        Session session = CommonToolClass.getSession();
        Criteria query = session.createCriteria(User.class);
        List list = query.list();
    
        for (Object object : list) {
            User dbuser=(User)object;
            if(user.getUsername().equals(dbuser.getUsername()) && user.getPassword().equals(dbuser.getPassword())){
                flag=true;
            }

        }
           return flag;
    }

  

 
    public static User getUserRecord(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    





}





