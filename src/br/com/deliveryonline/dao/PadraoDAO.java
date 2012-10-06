package br.com.deliveryonline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import br.com.deliveryonline.dao.CONN;

public class PadraoDAO {
	Connection  con = null;

	public void init(){
		try{
			Class.forName(CONN.DRIVER);
			System.out.println("Driver Carregado");
		}
		catch(ClassNotFoundException e){
			System.out.println("O driver do PostgreSQL não pôde ser carregado!");
		}
	}

	public Connection getConnection(){
		try{
			if ((con==null) || (con.isClosed())) {
			  con = DriverManager.getConnection(CONN.URL,CONN.USER,CONN.PASSWD);
			  System.out.println("Conexão Estabelecida");
			}
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		}
		return con;
	}

	public void destroy(){
		try{
			con.close();
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		}
	}
	
	public PadraoDAO(){
		init();
	}
}
