package com.julias.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
* static factory design pattern
*/

public class DBConnection
{
    static Connection con;
    
    public static Connection getConnect() 
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "root");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        
        return con;
    }
}
