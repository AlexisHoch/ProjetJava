/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author pedago
 */
public class DAO {
    
    
    	private final DataSource myDataSource;

	/**
	 *
	 * @param dataSource la source de données à utiliser
	 */
	public DAO(DataSource dataSource) {
		this.myDataSource = dataSource;
	}
    
    
        
        
        
 
        public void newAccount(String disc, int zip) throws SQLException{
            
            String sql = "INSERT INTO Customer(CUSTOMER_ID, DISCOUNT_CODE, ZIP) VALUES ( (SELECT MAX(CUSTOMER_ID)+1 FROM CUSTOMER), ?, ?)";
                    //--------------------------------ID NAME EMAIL
            
            try(Connection myConnection = myDataSource.getConnection();
                    PreparedStatement customerStatement = myConnection.prepareStatement(sql)){
                    
                    customerStatement.setString(1, disc);
                    customerStatement.setInt(2, zip);
                    System.out.println(customerStatement.toString());
                    customerStatement.executeUpdate();
                    }
                
            }
        
        
        public void newInvoice(int customerID) throws SQLException{
            
            String sql = "INSERT INTO Invoice(ID, CustomerID) VALUES ( (SELECT MAX(ID)+1 FROM Invoice), ?)";
            try(Connection myConnection = myDataSource.getConnection();
                    PreparedStatement customerStatement = myConnection.prepareStatement(sql)){
                    
                    customerStatement.setInt(1, customerID);
                    System.out.println(customerStatement.toString());
                    customerStatement.executeUpdate();
                    }
            
        }
        
        
               
        public void addItemToInvoice(int invoiceID, int productID, int quantity) throws SQLException{
            String sql = "INSERT INTO Item(Item, InvoiceID, ProductID, Quantity) VALUES ( (SELECT MAX(ID)+1 FROM Invoice), ?, ?, ?)";
            String cost = "SELECT Purchase_cost FROM PRODUCT WHERE PRODUCT_ID = ?";
            int totalCostItem;
            try(Connection myConnection = myDataSource.getConnection();
                    
                    PreparedStatement customerStatement = myConnection.prepareStatement(sql)){
                
                    
                    customerStatement.setInt(1, invoiceID);
                    customerStatement.setInt(2, productID);
                    customerStatement.setInt(3, quantity);
                    System.out.println(customerStatement.toString());
                    customerStatement.executeUpdate();
                    }
            
        }
             
        
        public int numberOfCustomers() throws SQLException {
		int result = 0;

		String sql = "SELECT COUNT(*) AS NUMBER FROM Customer";
		try (Connection connection = myDataSource.getConnection();
		     Statement stmt = connection.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt("NUMBER");
			}
		}
		return result;
	}
        
        public void deleteCustomer(int customerId) {

		// Une requête SQL paramétrée
		String sql = "DELETE FROM CUSTOMER WHERE CUSTOMER_ID = ?";
		try (   Connection connection = myDataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement(sql)
                ) {
                        // Définir la valeur du paramètre
			stmt.setInt(1, customerId);
			
			stmt.executeUpdate();

		}  catch (SQLException ex) {
			Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
			
		}
            }
        
        
        public List<Customer> customersInState(String state){
		List<Customer> result = new LinkedList<>(); // Liste vIde

		String sql = "SELECT * FROM CUSTOMER WHERE STATE = ?";
		try (Connection connection = myDataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setString(1, state);

			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) { // Tant qu'il y a des enregistrements
					// On récupère les champs nécessaires de l'enregistrement courant
					int id = rs.getInt("CUSTOMER_ID");
					String name = rs.getString("NAME");
					String address = rs.getString("ADDRESSLINE1");
					// On crée l'objet entité
					Customer c = new Customer(id, name, address);
					// On l'ajoute à la liste des résultats
					result.add(c);
				}
			}
		}  catch (SQLException ex) {
			Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
		}

		return result;

	}
        
        
        public Customer findCustomer(int id) throws SQLException {
            Customer c = null;
            String sql = "SELECT * FROM Customer WHERE email = ?";
            try (Connection myConnection = myDataSource.getConnection();
                PreparedStatement statement = myConnection.prepareStatement(sql)) {
                statement.setInt(1, id); // On fixe le 1° paramètre de la requête
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    String email = rs.getString("EMAIL");
                    String dc = rs.getString("DISCOUNT_CODE");
                    int zip = rs.getInt("ZIP");
                    String name = rs.getString("NAME");
                    String adress = rs.getString("ADDRESSLINE1");
                    String adress2 = rs.getString("ADDRESSLINE2");
                    String city = rs.getString("CITY");
                    String state = rs.getString("STATE");
                    String phone = rs.getString("PHONE");
                    String fax = rs.getString("FAX");
                    int credit = rs.getInt("CREDIT_LIMIT");
                    c = new Customer(id, dc, zip, name, adress, adress2, city, state, phone, fax, email, credit);
                }
            }
        }
        return c;
    }
        
        
    public void newProduct(String disc, int zip) throws SQLException{
            
            String sql = "INSERT INTO Customer(CUSTOMER_ID, DISCOUNT_CODE, ZIP) VALUES ( (SELECT MAX(CUSTOMER_ID)+1 FROM CUSTOMER), ?, ?)";
                    //--------------------------------ID NAME EMAIL
            
            try(Connection myConnection = myDataSource.getConnection();
                    PreparedStatement customerStatement = myConnection.prepareStatement(sql)){
                    
                    customerStatement.setString(1, disc);
                    customerStatement.setInt(2, zip);
                    System.out.println(customerStatement.toString());
                    customerStatement.executeUpdate();
                    }
                
            }
        
        
        
            
                    
}
