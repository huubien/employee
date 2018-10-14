/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import bean.Major;
import bean.Majorr;
import bean.Student;

/**
 *
 * @author Administrator
 */
public class Student3Model {

    public Student3Model() {
    }
    
    public static List<Student> showStudent(String tensp){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://DESKTOP-47GJMNV\\SQLEXPRESS:1433;databaseName=Lab3";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Students";
            if(tensp.length() > 0){
                sql += " where Name like '%"+tensp+"%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Student> list = new ArrayList<Student>();
            while(rs.next()){
                int masv = rs.getInt("masv");
                String name = rs.getString("name");
                double mark = rs.getDouble("mark");
                String major = rs.getString("major");
                Student sp = new Student(masv,name, mark, major);
                list.add(sp);
            }
            return list;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public Student3Model[] searchname(String names){
        try{
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://DESKTOP-4L12VH8\\SQLEXPRESS:1433;databaseName=Lab3";
            Connection con = DriverManager.getConnection(url, "sa","123");
           String sql ="select * from Students where name like ?";
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, "%"+names+"%");
           ResultSet rs = stm.executeQuery();
           ArrayList list = new ArrayList();
          while(rs.next()){
                int masv = rs.getInt("masv");
                String name = rs.getString("name");
                double mark = rs.getDouble("mark");
                String major = rs.getString("major");
                Student sp = new Student(masv,name, mark, major);
                list.add(sp);
            }
           Student3Model[] result = new Student3Model[list.size()];
           list.toArray(result);
           rs.close();
           stm.close();
           con.close();
           return result;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public static void delete(int masv){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
             String url="jdbc:sqlserver://DESKTOP-47GJMNV\\SQLEXPRESS:1433;databaseName=Lab3";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "delete from Students where masv=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, masv);
            stm.executeUpdate();
            stm.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void insert(Student sv){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               String url="jdbc:sqlserver://DESKTOP-47GJMNV\\SQLEXPRESS:1433;databaseName=Lab3";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into Students values(?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, sv.getName());
            stm.setDouble(2, sv.getMark());
            stm.setString(3, sv.getMajor());
            stm.executeUpdate();
            stm.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void update(Student sv){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
              String url="jdbc:sqlserver://DESKTOP-47GJMNV\\SQLEXPRESS:1433;databaseName=Lab3";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "update Students set name=?, mark=?, major=? where masv=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, sv.getName());
            stm.setDouble(2, sv.getMark());
            stm.setString(3, sv.getMajor());
            stm.setInt(4, sv.getMasv());
            stm.executeUpdate();
            stm.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    
  
    }
    public List<Majorr> getNganh(String major) {            
      List<Majorr> list = new ArrayList();
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://DESKTOP-47GJMNV\\SQLEXPRESS:1433;databaseName=Lab3";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Studentsss";
            if(major.length() > 0){
                sql += " where major like '%"+major+"%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
        while (rs.next()) {
                Majorr std = new Majorr(rs.getString(2),rs.getString(2));
                list.add(std);
            }
            stm.close();
            con.close();
            return list;
}  catch (Exception e) {
            e.printStackTrace();
}
        return null;
    }
}
        
        

   