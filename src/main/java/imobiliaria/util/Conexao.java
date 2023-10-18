package imobiliaria.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	String servidor = new Config().servidor;
    String banco = new Config().banco;
    String usuario = new Config().usuario;
    String senha = new Config().senha;
    
    String conexao = "jdbc:mysql://"+servidor+"/"+banco+"?useTimezone=true&serverTimezone=UTC&user="+usuario+"&password="+senha;

	public Connection conectar() throws SQLException{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			return DriverManager.getConnection(conexao);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}
