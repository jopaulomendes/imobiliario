package imobiliaria.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import imobiliaria.model.LoginModel;
import imobiliaria.util.Conexao;

public class LoginRepository {

	private Connection connection;
	
	public LoginRepository() {
		connection = Conexao.getConnection();
	}
	
	public boolean autenticacao(LoginModel loginModel) throws SQLException {
		String sql = "SELECT * FROM usuarios WHERE email = ? and senha = ? ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, loginModel.getEmail());
		statement.setString(2, loginModel.getSenha());
		
		ResultSet resultSet = statement.executeQuery();
		if (resultSet.next()) {
			System.out.println("Conexão realizada com sucesso");
			return true;
		}
		System.out.println("Falha na autenticação!");
		return false;
	}
}
