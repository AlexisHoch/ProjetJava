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
            
            String sql = "INSERT INTO Customer(CUSTOMER_ID, DISCOUNT_CODE, ZIP) VALUES (?, ?, ?)";
                    //--------------------------------ID NAME EMAIL
            
            try(Connection myConnection = myDataSource.getConnection();
                    PreparedStatement customerStatement = myConnection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){
                    
                    customerStatement.setInt(1, customerStatement.getGeneratedKeys().getInt("ID"));
                    customerStatement.setString(2, disc);
                    customerStatement.setInt(3, zip);
                    
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
            
                    
}
