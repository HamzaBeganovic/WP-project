/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;
import Beans.Proizvod;
import Utils.DB;
import static com.sun.media.jfxmediaimpl.MediaUtils.error;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tarik
 */
@WebServlet(name = "dodajProizvod", urlPatterns = {"/dodajProizvod"})
public class dodajProizvod extends HttpServlet {

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
         try (PrintWriter out = response.getWriter()) {
            
            
            Proizvod p = new Proizvod();
            
            int Id = Integer.parseInt(request.getParameter("Id"));
            String naziv = request.getParameter("naziv");
            String opis = request.getParameter("opis");
            float cijena = Float.parseFloat(request.getParameter("cijena"));
            
            HttpSession session = request.getSession(true);
            
            p.setId(Id);
            p.setNaziv(naziv);
            p.setOpis(opis);
            p.setCijena(cijena);
            
            
            session.setAttribute("Proizvod", p);
            
               String query = "INSERT INTO Proizvod (naziv, opis,cijena) VALUES ('" + naziv + "', '" + opis + "', '" + cijena  + "')";
            
            Connection con = null;
            Statement stmt = null;
            
            try {
                con = DB.getInstance().getConnection();
                stmt = con.createStatement();
                stmt.executeUpdate(query);
                stmt.close();       
            } catch (SQLException e) {
                System.out.print(e);
            }
            
            RequestDispatcher rd = request.getRequestDispatcher("homeP.jsp");
            rd.forward(request, response);
        }
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





