/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class mailDao {
    public String getMailData(String presId,String role) throws SQLException
    {
        String result="";
        dataBaseConnection db=new dataBaseConnection();
        Connection con=db.getConnection();
        String query="select patientId,doctorId,appointmentTime,appointmentDate from pateint_doctor where prescriptionId=?";
        PreparedStatement pre=con.prepareStatement(query);
        pre.setInt(1,Integer.parseInt(presId));
        ResultSet res=pre.executeQuery();
        int did=0;
        int pid=0;
        String time="";
        String date="";
        String dname="";
        String email="";
        String pname="";
        if(res.next())
        {
            pid=res.getInt("patientId");
            did=res.getInt("doctorId");
            time=res.getString("appointmentTime");
            date=res.getString("appointmentDate");
            if(role.equals("doctor"))
            {   
            String query1="select first_name,email from doctor_details where doctor_id=?";
            PreparedStatement pre1=con.prepareStatement(query1);
            pre1.setInt(1,did);
            ResultSet res1=pre1.executeQuery();
            if(res1.next())
            {
                dname=res1.getString("first_name");
                email=res1.getString("email");
            }
            String query2="select first_name from patient_details where pateintId=?";
            PreparedStatement pre2=con.prepareStatement(query2);
            pre2.setInt(1, pid);
            ResultSet res2=pre2.executeQuery();
            if(res2.next())
            {
                pname=res2.getString("first_name");
            }
            result=email+","+pname+","+dname+","+date+","+time;            
            }
            else if(role.equals("patient"))
            {
             String query1="select first_name,email from patient_details where pateintId=?";
            PreparedStatement pre1=con.prepareStatement(query1);
            pre1.setInt(1,pid);
            ResultSet res1=pre1.executeQuery();
            if(res1.next())
            {
                dname=res1.getString("first_name");
                email=res1.getString("email");
            }
            String query2="select first_name from doctor_details where doctor_id=?";
            PreparedStatement pre2=con.prepareStatement(query2);
            pre2.setInt(1, did);
            ResultSet res2=pre2.executeQuery();
            if(res2.next())
            {
                pname=res2.getString("first_name");
            }
            result=email+","+pname+","+dname+","+date+","+time;   
            }
            // Email,status, patientName,doctorName,person,date,time,function1
        }
        return result;
    }
}
