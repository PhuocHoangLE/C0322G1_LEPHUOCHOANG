package model.Customer;

import java.util.Date;

public class Customer {
    private int customerId;
    private String customerName;
    private String customerBirthDay;
    private int gender;
    private String customerIdCard;
    private String customerPhoneNumber;
    private String customerEmail;
    private String customerAddress;

    private int customerTypeId;

    public Customer() {
    }

    public Customer(int customerId, String customerName, String customerBirthDay, int gender, String customerIdCard, String customerPhoneNumber, String customerEmail, String customerAddress, int customerTypeId) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerBirthDay = customerBirthDay;
        this.gender = gender;
        this.customerIdCard = customerIdCard;
        this.customerPhoneNumber = customerPhoneNumber;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
        this.customerTypeId = customerTypeId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerBirthDay() {
        return customerBirthDay;
    }

    public void setCustomerBirthDay(String customerBirthDay) {
        this.customerBirthDay = customerBirthDay;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getCustomerIdCard() {
        return customerIdCard;
    }

    public void setCustomerIdCard(String customerIdCard) {
        this.customerIdCard = customerIdCard;
    }

    public String getCustomerPhoneNumber() {
        return customerPhoneNumber;
    }

    public void setCustomerPhoneNumber(String customerPhoneNumber) {
        this.customerPhoneNumber = customerPhoneNumber;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public int getCustomerTypeId() {
        return customerTypeId;
    }

    public void setCustomerTypeId(int customerTypeId) {
        this.customerTypeId = customerTypeId;
    }
}