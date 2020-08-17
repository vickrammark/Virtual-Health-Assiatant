/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import com.VirtusaProject.virtual_health_assistant.Setter.LoginDetailsModal;
import com.VirutsaProject.virtual_health_assistant.Modal.loginDetailsSetter;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.log4j.Logger;

/**
 *
 * @author DELL
 */
public class checkUser {
     static final  Logger logger1=Logger.getLogger(checkUser.class);

    public boolean checkUser(String Name,String Email,String password,String role,PrintWriter out) throws SQLException
    {
        try
        {
        loginDetailsSetter d=new loginDetailsSetter();
        LoginDetailsModal log=d.setElement(Name, Email, password, role);
        dataBaseConnection db=new dataBaseConnection();
        Connection con=db.getConnection();
        String query="";
        if(con==null)
        {
           out.println("failed");
        }
        if(role.equals("doctor"))
        {    
         query="select doctor_id from doctor_details where email=?"; 
        }
        else if(role.equals("patient"))
        {
         query="select pateintId from patient_details where email=? "; 
        }
        else if(role.equals("lab"))
        {
         query="select labId from lab_details where email=? ";    
        }

        PreparedStatement pre=con.prepareStatement(query);
        pre.setString(1, Email);
        ResultSet res=pre.executeQuery();
        if(res.next())
        {
            logger1.info("verrfication failed already exist");               
            return true;
        }
        else
        {
            logger1.info("verification done new user");
            return false;
        }
        }
        catch(Exception ex)
        {
            logger1.error("Verification problem="+ex.getMessage());
        }
        return false;
    }
}
