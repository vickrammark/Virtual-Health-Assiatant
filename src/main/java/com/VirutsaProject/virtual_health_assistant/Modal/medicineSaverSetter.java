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
public class medicineSaverSetter {
 
    private String id;
    private String morningMedicine;
    private String morningTime;
    private String noonMedicine;
    private String noonTime;
    private String nightMedicine;
    private String nightTime;
    private String problem;
    private String procedure;

    public medicineSaverSetter(String id, String morningMedicine, String morningTime, String noonMedicine, String noonTime, String nightMedicine, String nightTime, String problem, String procedure) {
        this.id = id;
        this.morningMedicine = morningMedicine;
        this.morningTime = morningTime;
        this.noonMedicine = noonMedicine;
        this.noonTime = noonTime;
        this.nightMedicine = nightMedicine;
        this.nightTime = nightTime;
        this.problem = problem;
        this.procedure = procedure;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMorningMedicine() {
        return morningMedicine;
    }

    public void setMorningMedicine(String morningMedicine) {
        this.morningMedicine = morningMedicine;
    }

    public String getMorningTime() {
        return morningTime;
    }

    public void setMorningTime(String morningTime) {
        this.morningTime = morningTime;
    }

    public String getNoonMedicine() {
        return noonMedicine;
    }

    public void setNoonMedicine(String noonMedicine) {
        this.noonMedicine = noonMedicine;
    }

    public String getNoonTime() {
        return noonTime;
    }

    public void setNoonTime(String noonTime) {
        this.noonTime = noonTime;
    }

    public String getNightMedicine() {
        return nightMedicine;
    }

    public void setNightMedicine(String nightMedicine) {
        this.nightMedicine = nightMedicine;
    }

    public String getNightTime() {
        return nightTime;
    }

    public void setNightTime(String nightTime) {
        this.nightTime = nightTime;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getProcedure() {
        return procedure;
    }

    public void setProcedure(String procedure) {
        this.procedure = procedure;
    }
}
