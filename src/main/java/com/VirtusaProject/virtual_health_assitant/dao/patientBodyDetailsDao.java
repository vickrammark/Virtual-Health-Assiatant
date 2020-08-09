/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import com.VirutsaProject.virtual_health_assistant.Setter.pateintBodyDetailsSetter;
import com.VirutsaProject.virtual_health_assistant.Setter.patientProblemSetter;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class patientBodyDetailsDao {
 
    public String getBodyDetails(pateintBodyDetailsSetter pb) throws SQLException
    {
        String result="";
        String Reason=pb.getReason();
        int id=Integer.parseInt(pb.getId());
        String Symptoms=pb.getSymptoms();
        String effects=pb.getEffects();
        String complication=pb.getComplication();
        dataBaseConnection db=new dataBaseConnection();
        Connection con=db.getConnection();
        String query1="select * from patientbodydetails where presId=?";
        PreparedStatement pre1=con.prepareStatement(query1);
        pre1.setInt(1,id);
        ResultSet res=pre1.executeQuery();
        if(res.next())
        {
            return "false";
        }
        else
        {
        String query="insert into patientbodydetails (presId,reason,effects,complication,Symptoms) values(?,?,?,?,?)";
        PreparedStatement pre=con.prepareStatement(query);
        pre.setInt(1,id);
        pre.setString(2,Reason);
        pre.setString(3,effects);
        pre.setString(4,complication);
        pre.setString(5,Symptoms);
        int count=pre.executeUpdate();
        if(count>0)
        {
            result="true";
        }
        else
        {
            result="false";
        }
        return result;
        }
    }
    public String getBodyDetails(patientProblemSetter ps) throws SQLException
    {
        int id=Integer.parseInt(ps.getId());
        String result="";
        dataBaseConnection db=new dataBaseConnection();
        Connection con=db.getConnection();
        String query1="select reason,effects,complication,Symptoms from patientbodydetails where presId=?";
        PreparedStatement pre1=con.prepareStatement(query1);
        pre1.setInt(1,id);
        ResultSet res=pre1.executeQuery();
        if(res.next())
        {
            result=res.getString("reason")+","+res.getString("effects")+","+res.getString("complication")+","+res.getString("Symptoms");
        }
        return result;
    }
}
