/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Boa Im
 */
public class BIAddBookServlet extends HttpServlet {

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
            String url = "BIAddBook.jsp";
            String message = "";

            String Quantity = request.getParameter("quantity");
            Integer quantity = 0;
            if (Quantity.isEmpty() || Quantity == null) {
                Quantity = "0";
            }

            try {
                quantity = Integer.parseInt(Quantity);

                String code = request.getParameter("code");
                String description = request.getParameter("description");

                // validate the parameters
                if (code.isEmpty() || code == null) 
                {
                    message += "Book code is required.<br>";
                }
                if (description.isEmpty() || description == null || description.length() < 3) 
                {
                    message += "Description must have at least 3 characters.<br>";
                }
                if (quantity <= 0) 
                {
                    message += "Quantity must be a positive number.";
                }

                if (message == "") 
                {
                    Book book = new Book(code, description, quantity);
                    BookIO.insert(book, "C:\\BIClub\\web\\WEB-INF\\books.txt");
                    url = "BIDisplayBooks";
                } 
                else {
                    request.setAttribute("message", message);
                }
            } 
            catch (Exception e) 
            {
                url = "BIError.jsp";
                request.setAttribute("errorType", e.getClass().getName());
                request.setAttribute("errorMessage", e.getMessage());
            }

            RequestDispatcher rd = request.getRequestDispatcher(url);

            rd.forward(request, response);

            message = "";
        }
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

    private boolean isEmptyString(String quantity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
