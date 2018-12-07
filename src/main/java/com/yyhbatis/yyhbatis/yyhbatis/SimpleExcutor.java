package com.yyhbatis.yyhbatis.yyhbatis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class SimpleExcutor implements Excutor{


    @Override
    public <T> T query(String sql, List<String> strList) {
        Connection connection=null;
        PreparedStatement pre=null;
        connection=getConnection();
        try {
             pre = connection.prepareStatement(sql);
            if(strList!=null&&strList.size()>0){
                for(int i=0;i<strList.size();i++){
                    pre.setString(i+1,strList.get(i));
                }
            }
            ResultSet set = pre.executeQuery();

            User u=new User();
            while(set.next()){
                System.out.println(set.getString(1));
                u.setName(set.getString(1));
            }
            return (T) u;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    private Connection getConnection() {
        String driver = "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/test";
        String username="root";
        String password="root";
        try {
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            return connection;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

}
