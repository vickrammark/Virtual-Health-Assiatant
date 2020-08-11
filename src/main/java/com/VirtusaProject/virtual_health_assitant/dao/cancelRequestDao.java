package com.VirtusaProject.virtual_health_assitant.dao;

import com.VirtusaProject.virtual_health_assistant.util.dataBaseConnection;
import com.VirutsaProject.virtual_health_assistant.Setter.cancelRequestSetter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.apache.log4j.Logger;

public class cancelRequestDao {
    static final Logger log=Logger.getLogger(cancelRequestDao.class);
    public String cancelRequest(cancelRequestSetter cs) throws SQLException
    {
        String result="";
        String id=cs.getId();
        dataBaseConnection db=new dataBaseConnection();
        Connection con=db.getConnection();
        String query="delete from pateint_doctor where prescriptionId=?";
        PreparedStatement pre=con.prepareStatement(query);
        pre.setString(1, id);
        int count=pre.executeUpdate();
        if(count>0)
        {
        log.info("Successfully deleted the appointment");
        return "true";
        }
        else
        {
        log.info("Not successfully deleted the appointment");
            return "false";         
        }
    }
}
