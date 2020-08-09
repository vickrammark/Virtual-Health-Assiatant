/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.Controller;

import com.VirtusaProject.virtual_health_assistant.modal.patientBodyDetailsModal;
import com.VirtusaProject.virtual_health_assitant.dao.patientBodyDetailsDao;
import com.VirutsaProject.virtual_health_assistant.Setter.pateintBodyDetailsSetter;
import com.VirutsaProject.virtual_health_assistant.Setter.patientProblemSetter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "patientBodyDetailsController", urlPatterns = {"/patientBodyDetailsController"})
public class patientBodyDetailsController extends HttpServlet {

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
        }
        catch (Exception ex) {
            out.println(ex.getMessage()+"hello");
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
   }
}