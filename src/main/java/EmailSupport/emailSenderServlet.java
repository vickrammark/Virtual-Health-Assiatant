/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EmailSupport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "emailSenderServlet", urlPatterns = {"/emailSenderServlet"})
public class emailSenderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
       PrintWriter out=resp.getWriter();
       
       String function=req.getParameter("function");
       
       emailHelper email=new emailHelper();
       if(function.equals("Appointment"))
       {
           
       String Email=req.getParameter("Email");
       String status=req.getParameter ("status");
       String PName=req.getParameter("patientName");
       String DName=req.getParameter("doctorName");
       String person=req.getParameter("person");
       String date=req.getParameter("date");
       String time=req.getParameter("time");
           String Message="";
           String result="";
       if(person.equals("doctor"))
          {    
           if(status.equals("accept"))
           {
               Message="Hey "+DName+" your meeting with "+PName+" has been scheduled on "+date+","+time ;                    
           }
           else
           {
               Message="Hey "+DName+" your meeting with "+PName+" has been canceld";
           }
          }
          else
          {
           if(status.equals("accept"))
           {
               Message="Hey "+PName+" your meeting with "+DName+" has been scheduled on"+date+","+time ;                    
           }
           else
           {
               Message="Hey "+PName+" your meeting with "+DName+" has been canceld which might have held on"+date+","+time ;
           }    
           
          }
           try {
              result=email.sendMail(Email,Message);
           } catch (Exception ex) {
              out.println(ex.getMessage());
           }
           resp.setContentType("text/html");
           
           resp.getWriter().write(result);
           
       }
      else
       {
           
       String Email=req.getParameter("Email");
       String status1="";
       String Message="\'please click the link to reset your password \\n\'+\'http://localhost:32571/mavenproject2/Reset.jsp\'";
        try {
          String  result=email.sendMail(Email,Message);
          if(result.equals("success"))
          {
              status1="true";
              req.setAttribute("message",status1);
              RequestDispatcher rd=req.getRequestDispatcher("forgetPassword.jsp");
              rd.forward(req, resp);
          }
          else
          {
              status1="false";
              req.setAttribute("message",status1);
              RequestDispatcher rd=req.getRequestDispatcher("forgetPassword.jsp");
              rd.forward(req, resp);
          }
        } catch (MessagingException ex) {
              out.println(ex.getMessage());
        }
    }

    
}
}
