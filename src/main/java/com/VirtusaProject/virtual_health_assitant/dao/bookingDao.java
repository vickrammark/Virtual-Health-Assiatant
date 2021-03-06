/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirutsaProject.virtual_health_assistant.Modal.bookingSetter;
import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class bookingDao {
    public String setBookingDeails(bookingSetter bm) throws SQLException
    {
        String result="";
        dataBaseConnection db=new dataBaseConnection();
        String email=bm.getEmail();
        String did=bm.getDid();
        String resaon=bm.getReason();
        Connection con=db.getConnection();
        String query1="select pateintId from patient_details where email=?";
        PreparedStatement pre=con.prepareStatement(query1);
        pre.setString(1,email );
        ResultSet res=pre.executeQuery();
        int id=0;
        if(res.next())
        {
            id=res.getInt("pateintId");
        }
        String query2="select prescriptionId from pateint_doctor where  patientId=? and doctorId=?";
        PreparedStatement pre2=con.prepareStatement(query2);
        pre2.setInt(1,id );
        pre2.setInt(2,Integer.parseInt(did));
        ResultSet res2=pre2.executeQuery();
        if(res2.next())
        {
            return "failed";
        }
        else
        {    
        String query="insert into pateint_doctor (patientId,doctorId,appointmentReason,confirmation) values (?,?,?,?)";
        PreparedStatement pre1=con.prepareStatement(query);
        pre1.setInt(1,id );
        pre1.setInt(2,Integer.parseInt(did));
        pre1.setString(3, resaon);
        pre1.setString(4,"No");
        int count=pre1.executeUpdate();
        if(count>0)
        {
            result="success";
        }
        else
        {
            result="failed";
        }
        }
        return result;
    }
    public String getEmailData(String email1,String did1) throws SQLException, SQLException
    {
        String result="";
        dataBaseConnection db=new dataBaseConnection();
        String email=email1;
        String did=did1;
        Connection con=db.getConnection();
        String query1="select pateintId,first_name from patient_details where email=?";
        PreparedStatement pre=con.prepareStatement(query1);
        pre.setString(1,email );
        ResultSet res=pre.executeQuery();
        int id=0;
        String pName="";
        String dName="";
        String date="";
        String time="";
        if(res.next())
        {
            id=res.getInt("pateintId");
            pName=res.getString("first_name");
        }
        String query2="select prescriptionId from pateint_doctor where  patientId=? and doctorId=?";
        PreparedStatement pre2=con.prepareStatement(query2);
        pre2.setInt(1,id );
        pre2.setInt(2,Integer.parseInt(did));
        ResultSet res2=pre2.executeQuery();
        int presId=0;
        if(res2.next())
        {
            presId=res2.getInt("prescriptionId");
        }
//        String query3="select first_name from doctor_details where doctor_id=?";
//        PreparedStatement pre3=con.prepareStatement(query3);
//        pre3.setInt(1,Integer.parseInt(did));
//        ResultSet res3=pre3.executeQuery();
//       
//        if(res3.next())
//        {
//           dName=res3.getString("first_name");
//        }
//        result=email+','+pName+","+dName;
//        return result ;
          return String.valueOf(presId);
    }
}
