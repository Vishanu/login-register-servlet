package com.login.logout;

import java.sql.Connection;

public class TestDB {
    public static void main(String[] args) {

        Connection con = DBConnection.getConn();

        if(con == null) {
            System.out.println("Connection NULL aa raha hai ❌");
        } else {
            System.out.println("Connected successfully ✅");
        }
    }
}
