package com.aptech.ebookstore.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static Connection conn;
    public static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/ebookstore","meomeo","meomeomeo");
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn;
    }
}