package com.aptech.ebookstore.controller;

import java.io.IOException;
import java.util.List;

import com.aptech.ebookstore.dao.CategoryDao;
import com.aptech.ebookstore.model.Category;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/categories")
public class CategoryController extends HttpServlet {
    private CategoryDao categoryDao;

    public CategoryController() {
        this.categoryDao = new CategoryDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categories = categoryDao.getAllCategories();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/views/partials/header.jsp").forward(request, response);
    }
}