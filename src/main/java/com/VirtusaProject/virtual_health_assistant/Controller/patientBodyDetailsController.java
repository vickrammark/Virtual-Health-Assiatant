/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.Controller;

import com.VirtusaProject.virtual_health_assistant.Setter.patientBodyDetailsModal;
import com.VirtusaProject.virtual_health_assitant.dao.patientBodyDetailsDao;
import com.VirtusaProject.virtual_health_assitant.dao.patientPrescriptionDao;
import com.VirutsaProject.virtual_health_assistant.Modal.pateintBodyDetailsSetter;
import com.VirutsaProject.virtual_health_assistant.Modal.patientPrescription;
import com.VirutsaProject.virtual_health_assistant.Modal.patientProblemSetter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

/**
 *
 * @author DELL
 */
@WebServlet(name = "patientBodyDetailsController", urlPatterns = {"/patientBodyDetailsController"})
public class patientBodyDetailsController extends HttpServlet {
     static final Logger logs7=Logger.getLogger(patientBodyDetailsController.class);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out=resp.getWriter();
        String function=req.getParameter("function");
        String result="";
        if(function.equals("saving"))
        {    
        String id=req.getParameter("presId");
        String reason=req.getParameter("reason");
        String symptoms=req.getParameter("symptoms");
        String effects=req.getParameter("effects");
        String complicatoin=req.getParameter("complication");
        patientBodyDetailsModal pm=new patientBodyDetailsModal();
        pateintBodyDetailsSetter ps=pm.setDetails(id, reason, symptoms, effects, complicatoin);
        patientBodyDetailsDao  pd=new patientBodyDetailsDao();
        try {
            result=pd.getBodyDetails(ps);
            logs7.info("Patient body details have been successfully saved in database");
        }
        catch (Exception ex) {
            logs7.info("Patinet body details not saved");
        }
        resp.setContentType("text/html");
        resp.getWriter().write(result);
        }
       
      else if(function.equals("getting"))
      {
          String id=req.getParameter("presId");
          patientProblemSetter pb=new patientProblemSetter(id);
          patientBodyDetailsDao pd=new patientBodyDetailsDao();
            try {
                result=pd.getBodyDetails(pb);
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
           resp.setContentType("text/html");
           resp.getWriter().write(result);
      }
      else if(function.equals("prescript"))
      {
          String id=req.getParameter("presId");
          patientPrescription pp=new patientPrescription(id);
          patientPrescriptionDao pd=new patientPrescriptionDao();
            try {
                result=pd.getPrescription(pp);
            } catch (Exception ex) 
            {
                logs7.error("Prescription Not Found-->Error="+ex.getMessage());
            }
            resp.setContentType("text/html");
            resp.getWriter().write(result);
      }
   }
}