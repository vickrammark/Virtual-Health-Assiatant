/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import com.VirutsaProject.virtual_health_assistant.Modal.patientPrescription;
import com.mysql.cj.conf.PropertyKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class patientPrescriptionDao {
    public String getPrescription(patientPrescription pp) throws SQLException
    {
        String result="";
        int id=Integer.parseInt(pp.getPresId());
        dataBaseConnection db=new dataBaseConnection();
        Connection con=db.getConnection();
        String query="select medicine_id,morningMedicine,morningTime,noonMedicine,noonTime,nightMedicine,nightTime,problemCause,procedureFollowed from medicine where idPrescription=?";
        PreparedStatement pre=con.prepareStatement(query);
        pre.setInt(1, id);
        ResultSet res=pre.executeQuery();
        if(res.next())
        {
            result=res.getString("medicine_id")+','+res.getString("morningMedicine")+","+res.getString("morningTime")+","+res.getString("noonMedicine")+","+res.getString("noonTime")+","+res.getString("nightMedicine")+","+res.getString("nightTime")+","+res.getString("problemCause")+","+res.getString("procedureFollowed");
        }
        return result;
        
    }
}
