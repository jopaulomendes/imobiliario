package imobiliaria.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	private static String servidor = new Config().servidor;
	private static String banco = new Config().banco;
	private static String usuario = new Config().usuario;
	private static String senha = new Config().senha;
	private static Connection connection = null;
    
    private static String conexao = "jdbc:mysql://"+servidor+"/"+banco+"?useTimezone=true&serverTimezone=UTC&user="+usuario+"&password="+senha;
    
    public static Connection getConnection() {
		return connection;
	}
    
    static {
    	try {
			conectar();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }
    
    public Conexao() throws SQLException {
		conectar();
	}

	private static void conectar() throws SQLException{
		try {
			if (connection == null) {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(conexao);
				connection.setAutoCommit(false);
			}
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}
