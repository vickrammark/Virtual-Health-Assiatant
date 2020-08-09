/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirtusaProject.virtual_health_assistant.modal;

import com.VirutsaProject.virtual_health_assistant.Setter.pateintBodyDetailsSetter;

/**
 *
 * @author DELL
 */
public class patientBodyDetailsModal {
    public  pateintBodyDetailsSetter setDetails(String id,String reason,String symptoms,String effects,String complication)
    {
        pateintBodyDetailsSetter ps=new pateintBodyDetailsSetter();
        ps.setId(id);
        ps.setSymptoms(symptoms);
        ps.setComplication(complication);
        ps.setEffects(effects);
        ps.setReason(reason);
        return ps;
    }
}
