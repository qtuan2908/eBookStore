package com.aptech.ebookstore.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/about", "/products", "/faq", "/contact", "/cart", "/order-tracking", "/wishlist"})
public class NavbarController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/about":
                request.getRequestDispatcher("/views/pages/navbar/about_us.jsp").forward(request, response);
                break;
            case "/products":
                request.getRequestDispatcher("/views/pages/products.jsp").forward(request, response);
                break;
            case "/faq":
                request.getRequestDispatcher("/views/pages/navbar/faq.jsp").forward(request, response);
                break;
            case "/contact":
                request.getRequestDispatcher("/views/pages/navbar/contact.jsp").forward(request, response);
                break;
            case "/cart":
                request.getRequestDispatcher("/views/pages/navbar/cart.jsp").forward(request, response);
                break;
            case "/order-tracking":
                request.getRequestDispatcher("/views/pages/navbar/order_tracking.jsp").forward(request, response);
                break;
            case "/wishlist":
                request.getRequestDispatcher("/views/pages/navbar/wishlist.jsp").forward(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
