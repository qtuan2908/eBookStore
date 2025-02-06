package com.aptech.ebookstore.controller;

import com.aptech.ebookstore.dao.CustomerDao;
import com.aptech.ebookstore.model.Customer;
import com.aptech.ebookstore.util.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")

public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");


            Customer ct = new Customer();
            ct.setName(name);
            ct.setEmail(email);
            ct.setAddress(check);
            ct.setPhonenumber(phno);
            ct.setPassword(password);

            HttpSession session = req.getSession();

            if(check!=null) {

                CustomerDao dao = new CustomerDao(DBConnection.getConn());
                boolean f = dao.customerRegister(ct);

                if(f) {
                    //System.out.print("Customer Register Success");
                    session.setAttribute("succMsg","Registration Success" );
                    resp.sendRedirect("register.jsp");
                }else {
                    //System.out.print("Failed");
                    session.setAttribute("failedMsg","Something wrong to server" );
                    resp.sendRedirect("register.jsp");
                }
            }else {
                session.setAttribute("failedMSG","Please check Term" );
                resp.sendRedirect("register.jsp");
            }



        }catch(Exception e) {
            e.printStackTrace();
        }


    }


}
