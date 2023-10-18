package imobiliaria.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

	public Connection conectar() throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/imobiliaria?useTimezone=true&serverTimezone=UTC&user=root&password=");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}
