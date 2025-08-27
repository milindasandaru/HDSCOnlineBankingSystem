package com.billpayment;

public class BillPayment {
    
    private int paymentID;
    private String billType;
    private String billNumber;
    private double paymentAmount;
    private String paymentDate;
    private String username;
    private String status;
    private Boolean confirmed;

    public BillPayment(String billType, String billNumber, double paymentAmount, String paymentDate, String username) {
        this.billType = billType;
        this.billNumber = billNumber;
        this.paymentAmount = paymentAmount;
        this.paymentDate = paymentDate;
        this.username = username;
        this.status = "Pending";
        this.confirmed = false; 
    }

    public BillPayment() {
    }
    

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getBillType() {
        return billType;
    }

    public void setBillType(String billType) {
        this.billType = billType;
    }

    public String getBillNumber() {
        return billNumber;
    }

    public void setBillNumber(String billNumber) {
        this.billNumber = billNumber;
    }

    public double getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(double paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Boolean getConfirmed() {
        return confirmed;
    }

    public void setConfirmed(Boolean confirmed) {
        this.confirmed = confirmed;
    }
}

