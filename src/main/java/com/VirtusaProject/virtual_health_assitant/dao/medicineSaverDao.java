/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import com.VirutsaProject.virtual_health_assistant.Setter.medicineSaverSetter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class medicineSaverDao {
  public String setMedicine(medicineSaverSetter ms) throws SQLException
  {
      String result="";
      String mornMed=ms.getMorningMedicine();
      String mornTime=ms.getMorningTime();
      String noonMed=ms.getNoonMedicine();
      String noonTime=ms.getNoonTime();
      String nightMed=ms.getNightMedicine();
      String nightTime=ms.getNightTime();
      String problem=ms.getProblem();
      String procedure=ms.getProcedure();
      int id=Integer.parseInt(ms.getId());
      dataBaseConnection db=new dataBaseConnection();
      Connection con=db.getConnection();
      String query="insert into medicine (idPrescription,morningMedicine,morningTime,noonMedicine,noonTime,nightMedicine,nightTime,problemCause,procedureFollowed) values (?,?,?,?,?,?,?,?,?)";
      PreparedStatement pre =con.prepareStatement(query);
      pre.setInt(1,id);
      pre.setString(2,mornMed);
      pre.setString(3,mornTime);
      pre.setString(4,noonMed);
      pre.setString(5,noonTime);
      pre.setString(6,nightMed);
      pre.setString(7,nightTime);
      pre.setString(8,problem);
      pre.setString(9,procedure);
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
