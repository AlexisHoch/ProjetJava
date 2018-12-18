/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author alexi
 */
public class Invoice {
    private int id;
    private int customerID;
    private float total;
    
    public Invoice (int Id, int  customerID, float total){
        this.id = Id;
        this.customerID=customerID;
        this.total=total;
    }
    
    public int getId() {
        return this.id;
    }
    public int getCustomerId() {
        return this.customerID;
    }

    public float getTotal() {
        return this.total;
    }
}

