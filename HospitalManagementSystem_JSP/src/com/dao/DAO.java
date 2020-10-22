package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Bean;

public class DAO 
{
	
	public static Connection getConnection()
	{  Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_project","root","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public static int Edit2Data(Bean b) throws SQLException
	{
		/* Bean b=new Bean(); */
		Connection con=DAO.getConnection();
		PreparedStatement ps=con.prepareStatement("update student set sname=?,scontact=?,scity=? where sid=?");
		ps.setString(1,b.getSname());
		ps.setLong(2, b.getScontact());
		ps.setString(3, b.getScity());
		ps.setLong(4, b.getSid());
		
	  int m=ps.executeUpdate();
		return m;
	}
	
	
	
	
	public static Bean getDataById(int id) throws SQLException {
		
		Bean b=new Bean();
		Connection con=DAO.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from student where sid=?");
		ps.setLong(1,id);
		ResultSet r=ps.executeQuery();
		
		while(r.next())
		{ 
			
		 b.setSid(r.getLong(1));
	     b.setSname(r.getString(2));
	     b.setScontact(r.getLong(3));
	     b.setScity(r.getString(4));
	     
	     
		}
		
		return b;
		
	}
	
	
	
	
	public static int DeteteData(int id) throws SQLException
	{
		
		Connection con=DAO.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from student where sid=?");
		ps.setInt(1, id);
		
		int m=ps.executeUpdate();
		return m;
	}
	
	
	
	
	
	public static List<Bean> view() throws SQLException
	{
		List<Bean> i=new ArrayList<>();
		Connection con=DAO.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from student");
		ResultSet r=ps.executeQuery();
		
		while(r.next())
		{ Bean b=new Bean();
			
		 b.setSid(r.getLong(1));
	     b.setSname(r.getString(2));
	     b.setScontact(r.getLong(3));
	     b.setScity(r.getString(4));
	     i.add(b);
	     
		}
		
		
		return i;
		
	}
	
	
	
	
	
	public static int save(Bean b) throws SQLException
	{
		Connection con=DAO.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into student(sname,scontact,scity) values(?,?,?)");
		ps.setString(1,b.getSname());
		ps.setLong(2,b.getScontact());
		ps.setString(3, b.getScity());
		
		int m=ps.executeUpdate();
		return m;
		
	}
	
	
	
	
	

}
