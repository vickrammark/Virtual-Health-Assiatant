/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.Controller;

import com.VirutsaProject.virtual_health_assistant.Modal.bookingSetter;
import com.VirtusaProject.virtual_health_assitant.dao.bookingDao;
import com.VirtusaProject.virtual_health_assistant.Setter.bookingModal;
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
@WebServlet(name = "bookingControlller", urlPatterns = {"/bookingControlller"})
public class bookingControlller extends HttpServlet {
      static final Logger logs2=Logger.getLogger(bookingControlller.class);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String docId=req.getParameter("doctorId");
            String email=req.getParameter("email");
            String reason=req.getParameter("reason");
            String function=req.getParameter("function");
            PrintWriter out=resp.getWriter();
        if(function.equals("booking"))
        {   
            bookingModal bs=new bookingModal();
            bookingSetter bm=bs.setBooking(docId, email,reason);
            bookingDao bk=new bookingDao();
            String result="";
        try {
            result=bk.setBookingDeails(bm);
            logs2.info("Booking has been done successfully");
        } catch (Exception ex) {
            out.println(ex.getMessage());
            logs2.info("Booking not done -->Error="+ex.getMessage());
        }
         resp.setContentType("text/html");
         if(result.equals("success"))
         {   
         resp.getWriter().write("success");
         }
         else
         {
          resp.getWriter().write("failed");
         }
        }
        else
        {
            bookingDao bd=new bookingDao();
            String result="";
                try {
                     result=bd.getEmailData(email, docId);
                } catch (Exception ex) {
                    out.println(ex.getMessage());
                }
                resp.setContentType("text/html");
                resp.getWriter().write(result);
        }
    }
 

 
}
