package Controller;

import Entity.Premises;
import Service.PremisesService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "PremisesServlet", urlPatterns = "/premises")
public class PremisesServlet extends HttpServlet {
    private final PremisesService premisesService = new PremisesService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "create":
                savePremises(request, response);
                break;
            default:
                listPremises(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "create":
                request.getRequestDispatcher("/WEB-INF/View/create.jsp").forward(request, response);
                break;
            case "delete":
                deletePremises(request, response);
                break;
            default:
                listPremises(request, response);
                break;
        }
    }


    private void listPremises(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeId = request.getParameter("typeIdSearch");
        String floor = request.getParameter("floorSearch");
        String price = request.getParameter("priceSearch");
        List<Premises> premisesList = premisesService.findAll(typeId, floor, price);
        request.setAttribute("premisesList", premisesList);
        request.getRequestDispatcher("/WEB-INF/View/list.jsp").forward(request, response);
    }


    private void savePremises(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        double area = Double.parseDouble(request.getParameter("area"));
        String status = request.getParameter("status");
        int floor = Integer.parseInt(request.getParameter("floor"));
        int typeId = Integer.parseInt(request.getParameter("typeId"));
        double price = Double.parseDouble(request.getParameter("price"));
        LocalDate startDate = LocalDate.parse(request.getParameter("startDate"));
        LocalDate endDate = LocalDate.parse(request.getParameter("endDate"));
        String description = request.getParameter("description");
        Premises premises = new Premises(code, area, status, floor, typeId, "", price, startDate, endDate, description);
        String errorMessage = premisesService.save(premises);
        if (errorMessage == null) {
            response.sendRedirect("/premises?action=list");
        } else {

            request.setAttribute("errorMessage", errorMessage);
            request.setAttribute("premises", premises);
            request.getRequestDispatcher("/WEB-INF/View/create.jsp").forward(request, response);
        }
    }


    private void deletePremises(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String code = request.getParameter("id");
        premisesService.delete(code);
        response.sendRedirect("/premises?action=list");
    }
}