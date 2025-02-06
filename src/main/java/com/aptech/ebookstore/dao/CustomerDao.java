package com.aptech.ebookstore.dao;

import com.aptech.ebookstore.model.Customer;

import java.sql.*;

public class CustomerDao {
    private final Connection conn;

    public CustomerDao(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean customerRegister(Customer ct) {
        boolean f = false;
        try {
            String sql = "INSERT INTO customer(Name,Phonenumber,Email,Password) VALUES(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,ct.getName());
            ps.setString(2,ct.getPhonenumber());
            ps.setString(3,ct.getEmail());
            ps.setString(4,ct.getPassword());

            int i = ps.executeUpdate();

            if(i==1) {
                f = true;
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return f;
    }
}

