/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author NoobsLord-pécé
 */
public class Customer {
    
    private int customerId;
    private String discountcode;
    private int zip;
    private String name;
    private String addressLine1;
    private String addressLine2;
    private String city;
    private String state;
    private String phone;
    private String fax;
    private String email;
    private int creditLimit;
    
    public Customer(int customerId, String dc, int zip, String name, String addressLine1,String addressLine2, String city, String State, String phone, String fax, String Email, int Credit) {
        this.customerId = customerId;
        this.discountcode=dc;
        this.zip=zip;
        this.name = name;
        this.addressLine1 = addressLine1;
        this.addressLine2 = addressLine2;
        this.city = city;
        this.state = State;
        this.phone = phone;
        this.fax = fax;
        this.email = Email;
        this.creditLimit = Credit;
    }
    
    public Customer(int customerId, String name, String address){
        this.customerId = customerId;
        this.discountcode=null;
        this.name = name;
        this.addressLine1 = address;
        this.addressLine2 = null;
        this.city = city;
        this.state = null;
        this.phone = phone;
        this.fax = fax;
        this.email = null;
    }    
    
    public int getCustomerId() {
        return customerId;
    }
    public String getDiscoutCode() {
        return this.discountcode;
    }
    public int getZip() {
        return this.zip;
    }
    public String getName() {
        return name;
    }
    public String getAddressLine1() {
        return addressLine1;
    }
    public String getAddressLine2() {
        return addressLine2;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getPhone() {
        return phone;
    }

    public String getFax() {
        return fax;
    }

    public String getEmail() {
        return email;
    }

    public int getCreditLimit() {
        return creditLimit;
    }
}
