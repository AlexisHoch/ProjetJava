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
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "Servlet_Login", urlPatterns = {"/Servlet_Login"})
public class Servlet_Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action != null){
            switch (action){
                case "Connexion":
                    startSession(request,response,action);
                    break;
                case "Deconnexion":
                    exitSession(request,response);
                    break;
                
            }
        }
        else{
            showView("ConnexionPage.jsp",request,response);
        }
    }
    private void startSession(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        String heidi = request.getParameter("id");
        String mdp = request.getParameter("mdp");
        
        if (heidi.equals("admin") && mdp.equals("admin")) {
            
            showView("AdminProduct.jsp", request, response);
            
        } else {
            
            
            Customer c = null;
            try {
                DAO dao = new DAO(DataSourceFactory.getDataSource());
                c = dao.Customer(heidi);
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
            
            if ((heidi == null ? email == null : heidi.equals(email)) && (mdp == null ? id == null : mdp.equals(id))) {
                request.setAttribute("correct", true);
                showView("client_side_view.jsp", request, response);
            } else {
                request.setAttribute("correct", false);
            }
        }
    }
    
        private void exitSession(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        showView("login_test.jsp", request, response);
    }
        
        private void showView(String jsp, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletConfig().getServletContext().getRequestDispatcher("/" + jsp).forward(request, response);
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
