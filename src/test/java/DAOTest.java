/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.DAO;
import static org.junit.Assert.*;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;


/**
 *
 * @author pedago
 */
public class DAOTest {
    private static DAO myDAO;
    private DataSource myDataSource; // La source de données à utiliser
	
    @Before
    public void setUp() throws SQLException {
		myDataSource = getDataSource();
		myDAO = new DAO(myDataSource);
	}

    @Test //@Ignore
    public void numberOfCustommer() throws SQLException{
        assertEquals(myDAO.numberOfCustomers(), 14);
    }
    
    @Test //@Ignore
    public void addCustomerTest() throws SQLException{
        int nmcustomers = myDAO.numberOfCustomers();
        myDAO.newAccount("L", 10096);
        assertEquals(myDAO.numberOfCustomers(), nmcustomers+1);
    }
    
    @Test //@Ignore
    public void deleteCustomer() throws SQLException{
        int nmcustomers = myDAO.numberOfCustomers();
        myDAO.deleteCustomer(864);
        assertEquals(myDAO.numberOfCustomers(), nmcustomers-1);
    }
    
        @Test //@Ignore
    public void numberInvoice() throws SQLException{
        int nminv = myDAO.numberOfInvoices();
        assertEquals(nminv, 2);
    }
    
           @Test //@Ignore
    public void addInvoice() throws SQLException{
        int nminv = myDAO.numberOfInvoices();
        myDAO.newInvoice(2);
        assertEquals(myDAO.numberOfInvoices(),nminv +1 );
    } 
    
        @Test //@Ignore
    public void addItemToInvoice() throws SQLException{
        int nmitm = myDAO.numberOfItems();
        myDAO.addItemToInvoice(4, 980001, 5);
        assertEquals(myDAO.numberOfItems(),nmitm +1 );
    } 
    

    



public static DataSource getDataSource() {
		org.apache.derby.jdbc.ClientDataSource ds = new org.apache.derby.jdbc.ClientDataSource();
		ds.setDatabaseName("sample");
		ds.setUser("app");
		ds.setPassword("app");
		// The host on which Network Server is running
		ds.setServerName("localhost");
		// port on which Network Server is listening
		ds.setPortNumber(1527);
		return ds;

}

}