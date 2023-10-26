package imobiliaria.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
		} else {
			// Verificar se a tabela está vazia antes de inserir um novo usuário
			Statement countStatement = connection.createStatement();
			ResultSet countResultSet = countStatement.executeQuery("SELECT COUNT(*) FROM usuarios");
			countResultSet.next();
			int count = countResultSet.getInt(1);
			if (count == 0) {
				// Inserir um novo usuário
				String insertSql = "INSERT into usuarios (nome, cpf, email, senha, nivel) values ('Administrador', '000.000.000-00' , 'admin@gmail.com' , '1234', 'admin')";
				PreparedStatement insertStatement = connection.prepareStatement(insertSql);
	            int rowsInserted = insertStatement.executeUpdate();
	            if (rowsInserted > 0) {
	            	System.out.println("Novo usuário padrão inserido com sucesso!");
	                return true;
				} else {
					System.out.println("Falha ao inserir novo usuário!");
	                return false;
				}
			}
		}
		System.out.println("Falha na autenticação!");
		return false;
	}
}
