/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.Controller;

import com.VirtusaProject.virtual_health_assitant.dao.medicineSaverDao;
import com.VirutsaProject.virtual_health_assistant.Setter.medicineSaverSetter;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "medicineSavingController", urlPatterns = {"/medicineSavingController"})
public class medicineSavingController extends HttpServlet {
    static final Logger logs=Logger.getLogger(medicineSavingController.class);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            PrintWriter out=resp.getWriter();
            String id=req.getParameter("id");
            String morningMedicine=req.getParameter("mornMed");
            String morningTime=req.getParameter("mornTime");
            String noonMedicine=req.getParameter("noonMed");
            String noonTime=req.getParameter("noonTime");
            String nightMedicine=req.getParameter("nightMedicine");
            String nightTime=req.getParameter("nightTime");
            String problem=req.getParameter("prob");
            String procedure=req.getParameter("procedure");
            medicineSaverSetter ms=new medicineSaverSetter(id, morningMedicine, morningTime, noonMedicine, noonTime, nightMedicine, nightTime, problem, procedure);
            String result="false";
            medicineSaverDao md=new medicineSaverDao();
        try {
            result=md.setMedicine(ms);
            logs.info("Successfully saved the details of prescription");
        } catch (Exception ex) {
            out.println(ex.getCause());           
            logs.error("Not Saved the details of prescription");
        }
            resp.setContentType("text/html");
            resp.getWriter().write(result);
    }
    
}
