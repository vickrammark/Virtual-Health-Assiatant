/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.VirutsaProject.virtual_health_assistant.Modal;

/**
 *
 * @author DELL
 */
public class patientPrescription {
 private String presId;

    public String getPresId() {
        return presId;
    }

    public void setPresId(String presId) {
        this.presId = presId;
    }

    public patientPrescription(String presId) {
        this.presId = presId;
    }
}
