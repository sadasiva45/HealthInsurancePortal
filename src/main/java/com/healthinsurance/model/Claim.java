package com.healthsure.model;

public class Claim {
    private int claimId;
    private String policyNumber;
    private String patient;
    private String hospital;
    private String city;
    private String claimType;
    private double claimAmount;
    private String treatmentDate;
    private String dischargeDate;
    private String claimReason;
    private String status;

    public Claim(int claimId, String policyNumber, String patient, String hospital, String city,
                 String claimType, double claimAmount, String treatmentDate, String dischargeDate,
                 String claimReason, String status) {
        this.claimId = claimId;
        this.policyNumber = policyNumber;
        this.patient = patient;
        this.hospital = hospital;
        this.city = city;
        this.claimType = claimType;
        this.claimAmount = claimAmount;
        this.treatmentDate = treatmentDate;
        this.dischargeDate = dischargeDate;
        this.claimReason = claimReason;
        this.status = status;
    }

    // Getters and setters
    public int getClaimId() { return claimId; }
    public String getPolicyNumber() { return policyNumber; }
    public String getPatient() { return patient; }
    public String getHospital() { return hospital; }
    public String getCity() { return city; }
    public String getClaimType() { return claimType; }
    public double getClaimAmount() { return claimAmount; }
    public String getTreatmentDate() { return treatmentDate; }
    public String getDischargeDate() { return dischargeDate; }
    public String getClaimReason() { return claimReason; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
