/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.modal;

/**
 *
 * @author DELL
 */
public class bookingModal {
 
    public com.VirutsaProject.virtual_health_assistant.Setter.bookingSetter setBooking(String did,String email,String reason)
    {
        com.VirutsaProject.virtual_health_assistant.Setter.bookingSetter bk=new com.VirutsaProject.virtual_health_assistant.Setter.bookingSetter();
        bk.setDid(did);
        bk.setEmail(email);
        bk.setReason(reason);
        return bk;
    }
}
