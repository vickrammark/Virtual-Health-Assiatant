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
public class updaterSetter {
     private String presId;
     private String AppDate;
     private String AppTime;
     private String AppConfirmation;

    public String getAppDate() {
        return AppDate;
    }

    public void setAppDate(String AppDate) {
        this.AppDate = AppDate;
    }

    public String getAppTime() {
        return AppTime;
    }

    public void setAppTime(String AppTime) {
        this.AppTime = AppTime;
    }

    public String getAppConfirmation() {
        return AppConfirmation;
    }

    public void setAppConfirmation(String AppConfirmation) {
        this.AppConfirmation = AppConfirmation;
    }

    public String getPresId() {
        return presId;
    }

    public void setPresId(String presId) {
        this.presId = presId;
    }
}
