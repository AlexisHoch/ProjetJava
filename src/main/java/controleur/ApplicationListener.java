/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import DAO.DAO;
import DAO.DataSourceFactory;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import org.apache.derby.tools.ij;

/**
 *
 * @author NoobsLord-pécé
 */

@WebListener()
public class ApplicationListener implements ServletContextListener{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        if(!IsDatabase()){
            initializeDatabase();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public boolean IsDatabase(){
        
        boolean res=false;

        try{
            DAO dao=new DAO(DataSourceFactory.getDataSource());
            Logger.getLogger("ProjetJava").log(Level.INFO, "Database exists");
            res=true;
        }catch(SQLException e){
            Logger.getLogger("ProjetJava").log(Level.INFO, "Database doesn't exist");
        }
        return res;
    }
    
   public void initializeDatabase(){
       OutputStream temp = new OutputStream(){
           @Override
           public void write(int i){
           }
       };
       
       try{
           Connection connection = DataSourceFactory.getDataSource().getConnection();
           int res = ij.runScript(connection,this.getClass().getResourceAsStream("export.sql"), "UTF-8", System.out,"UTF-8");
           if (res==0){
               Logger.getLogger("ProjetJEE").log(Level.INFO, "Database succesfully created");
                } 
           else {
                Logger.getLogger("ProjetJEE").log(Level.SEVERE, "Errors creating database");
		}
       }catch(UnsupportedEncodingException | SQLException e) {
			Logger.getLogger("ProjetJEE").log(Level.SEVERE, null, e);
		}
           
   }
    
}
