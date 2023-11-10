package imobiliaria.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imobiliaria.dao.UsuarioRepository;
import imobiliaria.model.Usuario;

@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UsuarioRepository repository = new UsuarioRepository();
       
    public ServletUsuario() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("id"); 
			String nome = request.getParameter("nome"); 
			String cpf = request.getParameter("cpf"); 
			String email = request.getParameter("email"); 
			String senha = request.getParameter("senha"); 
			
			Usuario usuario = new Usuario();
			usuario.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
			usuario.setNome(nome);
			usuario.setCpf(cpf);
			usuario.setEmail(email);
			usuario.setSenha(senha);
			
			usuario = repository.salvarUsuario(usuario);
			
			// TODO: verificar pra onde redirecionar
		} catch (SQLException e) {
			e.printStackTrace();
			RequestDispatcher dispatcher = request.getRequestDispatcher("../erro.jsp");
			request.setAttribute("msg", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
