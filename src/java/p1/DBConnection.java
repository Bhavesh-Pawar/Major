
package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.sql.Statement;


public class DBConnection 
{
static String driver = "com.mysql.jdbc.Driver";
static String connectionUrl = "jdbc:mysql://localhost:3306/";
static String database = "quiz_system";
static String userid = "root";
static String password = "root";
static Connection conn=null;
static PreparedStatement stm=null;

public  Connection getConnection()
{
    try {
        Class.forName(driver);
        System.out.println("Driver Loaded");
        
        conn=DriverManager.getConnection(connectionUrl+database, userid, password);
        System.out.println("Connected");
    } 
    catch (ClassNotFoundException | SQLException e) 
    {
        System.out.println(e);
    }
      return conn;
}
       
 }
