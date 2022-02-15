
package com.app;


import java.sql.*;

public class conn{
    
    public Connection c;
    public Statement s;
    
    public conn(){
        try{
        
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://Survey","root","alekh9696");
            s=c.createStatement();
        
        }catch(Exception e){
        
            e.printStackTrace();
        }
        
    }
}

