/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.Controller;

import com.VirtusaProject.virtual_health_assistant.modal.NotificationModal;
import com.VirtusaProject.virtual_health_assitant.dao.NotificationDao;
import com.VirutsaProject.virtual_health_assistant.Setter.NotificationSetter;
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
@WebServlet(name = "NotificationController", urlPatterns = {"/NotificationController"})
public class NotificationController extends HttpServlet {
           static final Logger logs=Logger.getLogger(NotificationController.class);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           PrintWriter out=resp.getWriter();
           String email=req.getParameter("email");
           String role=req.getParameter("role");
           NotificationModal nm=new NotificationModal();
           NotificationSetter ns=nm.setNotification(email);
           NotificationDao nd=new NotificationDao();
           
           int count=0;
        try {
            count=nd.setNotification(ns,role);
        } catch (Exception ex) {
           out.println(ex.getMessage());  
        }
        resp.setContentType("text/html");           
        resp.getWriter().write(String.valueOf(count));
    }    
}
