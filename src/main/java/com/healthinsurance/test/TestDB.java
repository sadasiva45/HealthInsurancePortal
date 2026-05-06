package com.healthinsurance.test;

import java.sql.Connection;
import com.healthinsurance.dao.DBConnection;

public class TestDB {
    public static void main(String[] args) {
        Connection con = DBConnection.getConnection();

        if (con != null) {
            System.out.println("✅ Database Connected Successfully");
        } else {
            System.out.println("❌ Database Connection Failed");
        }
    }
}
