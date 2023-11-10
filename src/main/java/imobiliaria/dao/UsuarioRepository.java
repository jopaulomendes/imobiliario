package imobiliaria.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import imobiliaria.model.Usuario;
import imobiliaria.util.Conexao;

public class UsuarioRepository {
	
	private Connection connection;
	
	public UsuarioRepository() {
		connection = Conexao.getConnection();
	}
	
	public  Usuario salvarUsuario(Usuario usuario) throws SQLException {
		String sql = "INSERT INTO usuarios (nome, cpf, email, senha, nivel, foto) VALUES(?, ?, ?, ?, ?, ?)";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, usuario.getNome());
		statement.setString(2, usuario.getCpf());
		statement.setString(3, usuario.getEmail());
		statement.setString(4, usuario.getSenha());
		statement.setString(5, usuario.getNivel());
		statement.setString(6, usuario.getFoto());
		statement.execute();
		
		connection.commit();
		
		return this.consultarUsuario(usuario.getEmail());
	}
	
	public Usuario consultarUsuario (String email) throws SQLException {
		Usuario usuario = new Usuario();
		
		String sql = "SELECT  * FROM usuarios u WHERE LOWER(email) = LOWER('"+ email +"')";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultSet = statement.executeQuery();
		while (resultSet.next()) {
			usuario.setId(resultSet.getLong("id"));
			usuario.setNome(resultSet.getString("nome"));
			usuario.setCpf(resultSet.getString("cpf"));
			usuario.setSenha(resultSet.getString("senha"));
			usuario.setNivel(resultSet.getString("nivel"));
			usuario.setFoto(resultSet.getString("foto"));
		}
		
		return usuario;
	}

}
