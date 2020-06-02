/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ernesto
 */
public class Controlador extends HttpServlet {

    String listar = "vistas/listar.jsp";
    String add = "vistas/add.jsp";
    String edit = "vistas/edit.jsp";
    Persona p = new Persona();
    PersonaDAO dao = new PersonaDAO();
    //cuidado aca
    String dui;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {

            String dui = request.getParameter("txtDui");
            String nom = request.getParameter("txtNom");
            String ape = request.getParameter("txtApe");
            p.setDui(dui);
            p.setNombres(nom);
            p.setApellidos(ape);
            dao.add(p);
            acceso = listar;

        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("duiper", request.getParameter("dui"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {

            //jmmmm aqui puede dar error ya que no estoy seguro si manda String
            dui = ((String) request.getParameter("txtDui"));

            String dui = request.getParameter("txtDui");
            String nom = request.getParameter("txtNom");
            String ape = request.getParameter("txtApe");

            p.setDui(dui);
            p.setNombres(nom);
            p.setApellidos(ape);
            dao.edit(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            dui = ((String) request.getParameter("dui"));
            p.setDui(dui);
            dao.eliminar(dui);
            acceso=listar;
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
