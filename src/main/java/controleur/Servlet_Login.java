/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import DAO.DAO;
import DAO.DataSourceFactory;
import DAO.Customer;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NoobsLord-pécé
 */
@WebServlet(name = "Servlet_Login", urlPatterns = {"/ConnexionPage.jsp"})
public class Servlet_Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        //DAO dao = new DAO(DataSourceFactory.getDataSource());
        if(action != null){
            switch (action){
                case "Connexion":
                    startSession(request,response,action);
                    break;
                case "Deconnexion":
                    exitSession(request,response);
                    break;
                case ("Créer un compte"):
                    break;   
            }
        }
        else{
            showView("ProductPage.jsp",request,response);
        }
    }
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        //DAO dao = new DAO(DataSourceFactory.getDataSource());
        if(actionIs(request,"Connexion")){
            startSession(request,response,"Connexion");
        }
        else if(actionIs(request,"Deconnexion")){
            exitSession(request,response);
        }
        else if (actionIs(request,"Creer_un_compte")){
            showView("CreateComptePage.jsp",request,response);
        }
        else{
            showView("ConnexionPage.jsp",request,response);
        }
    }
    private void startSession(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        String log = request.getParameter("inputEmail4");
        String mdp = request.getParameter("inputPassword4");
        
        //log.equals("admin@admin") && mdp.equals("admin")
        if (action.equals("Connexion")) {
            //RequestDispatcher dispat = request.getRequestDispatcher("/views/AdminPage.jsp");
            //dispat.forward(request,response);
            //if (log.equals("admin@admin") && mdp.equals("admin")){
                
                    showView("AdminPage.jsp", request, response);
            //}
            
        } else {
            
            
            Customer c = null;
            try {
                DAO dao = new DAO(DataSourceFactory.getDataSource());
                c = dao.Customer(log);
            } catch (SQLException ex) {}
            
            String email = c.getEmail();
            String id = Integer.toString(c.getCustomerId());
            session.setAttribute("id", c.getCustomerId());
            session.setAttribute("name", c.getName());
            session.setAttribute("email", c.getEmail());
            session.setAttribute("adresse", c.getAddressLine1());
            session.setAttribute("telephone", c.getPhone());
            session.setAttribute("state", c.getState());
            session.setAttribute("city", c.getCity());
            session.setAttribute("credit", c.getCreditLimit());
            
            /*if ((log == null ? email == null : log.equals(email)) && (mdp == null ? id == null : mdp.equals(id))) {
                //request.setAttribute("correct", true);
                switch (action) {
                    case "Connexion":
                        showView("ClientPage.jsp", request, response);
                        break;
                }
            } else {
                request.setAttribute("correct", false);
            }*/
            showView("ClientPage.jsp",request,response);
        }
    }
        private boolean actionIs(HttpServletRequest request,String action){
            return action.equals(request.getParameter("action"));
        }
    
        private void exitSession(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        showView("ConnexionPage.jsp", request, response);
    }
        
        private void showView(String jsp, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletConfig().getServletContext().getRequestDispatcher("/views/" + jsp).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
